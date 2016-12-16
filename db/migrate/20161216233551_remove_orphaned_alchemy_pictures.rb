class RemoveOrphanedAlchemyPictures < ActiveRecord::Migration
  def up
    execute <<-SQL.strip_heredoc
      DELETE FROM alchemy_pictures WHERE image_file_format IS NULL
    SQL
  end
end
