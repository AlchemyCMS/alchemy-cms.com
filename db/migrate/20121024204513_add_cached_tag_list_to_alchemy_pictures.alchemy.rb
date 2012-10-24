# This migration comes from alchemy (originally 20120728185830)
class AddCachedTagListToAlchemyPictures < ActiveRecord::Migration
  def change
    add_column :alchemy_pictures, :cached_tag_list, :string
  end
end
