class RemoveKeywordsFromExtensions < ActiveRecord::Migration[5.1]
  def change
    remove_column :extensions, :keywords, :text
  end
end
