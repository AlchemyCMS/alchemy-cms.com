# This migration comes from alchemy (originally 20121220102223)
class AddAliasesToSite < ActiveRecord::Migration
  def change
    add_column :alchemy_sites, :aliases, :text
    add_column :alchemy_sites, :redirect_to_primary_host, :boolean
  end
end
