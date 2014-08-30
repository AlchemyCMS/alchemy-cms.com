class CreateShowcases < ActiveRecord::Migration
  def change
    create_table :showcases do |t|
      t.string :title
      t.string :url
      t.string :creator
      t.string :screenshot_uid
      t.userstamps
      t.timestamps
    end
  end
end
