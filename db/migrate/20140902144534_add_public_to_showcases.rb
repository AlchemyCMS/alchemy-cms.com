class AddPublicToShowcases < ActiveRecord::Migration
  def change
    add_column :showcases, :public, :boolean, default: false
    add_index :showcases, :public
  end
end
