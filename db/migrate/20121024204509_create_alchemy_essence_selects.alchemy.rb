# This migration comes from alchemy (originally 20120608085509)
class CreateAlchemyEssenceSelects < ActiveRecord::Migration
  def change
    create_table :alchemy_essence_selects do |t|
      t.string :value

      t.timestamps
      t.userstamps
    end
    add_index :alchemy_essence_selects, :value
  end
end
