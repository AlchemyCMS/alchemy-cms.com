# This migration comes from alchemy (originally 20121211163003)
class AddPublicToAlchemySites < ActiveRecord::Migration
  def change
    add_column :alchemy_sites, :public, :boolean, :default => false
    add_index :alchemy_sites, [:host, :public], :name => 'alchemy_sites_public_hosts_idx'
  end
end
