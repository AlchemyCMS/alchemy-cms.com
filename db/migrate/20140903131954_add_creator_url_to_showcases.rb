class AddCreatorUrlToShowcases < ActiveRecord::Migration
  def change
    add_column :showcases, :creator_url, :string
  end
end
