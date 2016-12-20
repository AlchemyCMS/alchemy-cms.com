require 'alchemy/shell'

module Alchemy
  class Tidy
    extend Shell

    def self.remove_orphaned_cells
      puts "\n## Removing orphaned cells"
      cells = Alchemy::Cell.unscoped.all
      if cells.any?
        orphaned_cells = cells.select do |cell|
          cell.page.nil? && cell.page_id.present?
        end
        if orphaned_cells.any?
          destroy_orphaned_records(orphaned_cells, 'cell')
        else
          log "No orphaned cells found", :skip
        end
      else
        log "No cells found", :skip
      end
    end

    def self.remove_orphaned_elements
      puts "\n## Removing orphaned elements"
      elements = Alchemy::Element.unscoped.all
      if elements.any?
        orphaned_elements = elements.select do |element|
          element.page.nil? && element.page_id.present? ||
            element.cell.nil? && element.cell_id.present?
        end
        if orphaned_elements.any?
          destroy_orphaned_records(orphaned_elements, 'element')
        else
          log "No orphaned elements found", :skip
        end
      else
        log "No elements found", :skip
      end
    end

    def self.remove_orphaned_contents
      puts "\n## Removing orphaned contents"
      contents = Alchemy::Content.unscoped.all
      if contents.any?
        orphaned_contents = contents.select do |content|
          content.essence.nil? && content.essence_id.present? ||
            content.element.nil? && content.element_id.present?
        end
        if orphaned_contents.any?
          destroy_orphaned_records(orphaned_contents, 'content')
        else
          log "No orphaned contents found", :skip
        end
      else
        log "No contents found", :skip
      end
    end

    private

    def self.destroy_orphaned_records(records, class_name)
      records.each do |record|
        log "Destroy orphaned #{class_name}: #{record.id}"
        record.delete
      end
    end
  end
end

namespace :alchemy do
  namespace :tidy do
    desc "Remove orphaned records (cells, elements, contents)."
    task remove_orphaned_records: [:environment] do
      Rake::Task['alchemy:tidy:remove_orphaned_cells'].invoke
      Rake::Task['alchemy:tidy:remove_orphaned_elements'].invoke
      Rake::Task['alchemy:tidy:remove_orphaned_contents'].invoke
    end

    desc "Remove orphaned cells."
    task remove_orphaned_cells: [:environment] do
      Alchemy::Tidy.remove_orphaned_cells
    end

    desc "Remove orphaned elements."
    task remove_orphaned_elements: [:environment] do
      Alchemy::Tidy.remove_orphaned_elements
    end

    desc "Remove orphaned contents."
    task remove_orphaned_contents: [:environment] do
      Alchemy::Tidy.remove_orphaned_contents
    end
  end
end

desc "Tidy"
task :tidy => [:environment] do
  %w(EssenceText EssenceRichtext EssenceSelect EssencePicture EssenceHtml).each do |class_name|
    essence_type = "Alchemy::#{class_name}"
    essence_type.constantize.find_each do |essence|
      contents = Alchemy::Content.where(essence_id: essence.id, essence_type: essence_type)
      if contents.count > 1
        german_content = contents.joins(element: :page).where(alchemy_pages: {language_id: 1}).first
        english_content = contents.joins(element: :page).where(alchemy_pages: {language_id: 2}).first

        new_essence = essence.dup
        new_essence.save!

        english_content.essence_id = new_essence.id
        english_content.save!

        puts "created new essence for #{english_content}"
      else
        "No essence with double content assignment found"
      end
    end
  end

  Rake::Task['alchemy:tidy:remove_orphaned_contents'].invoke
  Rake::Task['alchemy:tidy:remove_orphaned_elements'].invoke
  Rake::Task['alchemy:tidy:remove_orphaned_cells'].invoke

  Alchemy::Language.where(name: 'Deutsch').destroy_all
end
