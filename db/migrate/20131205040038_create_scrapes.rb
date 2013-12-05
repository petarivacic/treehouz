class CreateScrapes < ActiveRecord::Migration
  def change
    create_table :scrapes do |t|
      t.string :handle
      t.string :fb_id
      t.string :message
      t.string :picture
      t.string :link
      t.string :created
      t.string :updated
      t.string :shares
      t.string :likes
      t.timestamps
    end
  end
end
