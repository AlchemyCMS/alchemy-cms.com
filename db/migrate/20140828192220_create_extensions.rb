class CreateExtensions < ActiveRecord::Migration
  def change
    create_table :extensions do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :maintainer
      t.text :keywords
      t.userstamps
      t.timestamps
    end
    add_index :extensions, :maintainer
  end
end
