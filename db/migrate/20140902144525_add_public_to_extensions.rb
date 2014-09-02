class AddPublicToExtensions < ActiveRecord::Migration
  def change
    add_column :extensions, :public, :boolean, default: false
    add_index :extensions, :public
  end
end
