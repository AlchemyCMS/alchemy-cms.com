# This migration comes from alchemy (originally 20120704181529)
class AddUploadHashToAlchemyPicture < ActiveRecord::Migration
  def change
    add_column :alchemy_pictures, :upload_hash, :string
  end
end
