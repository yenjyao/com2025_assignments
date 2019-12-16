#Creates original songs table
class CreateOgsongs < ActiveRecord::Migration[5.2]
  def change
    create_table :ogsongs do |t|
      #Creates title of type string which cannot be null
      t.string :title, null: false
      #Creates artist of type string which cannot be null
      t.string :artist, null: false
      #Creates lyrics of type text due to size of data which CAN be null, meaning it is optional
      t.text :lyrics

      t.timestamps
    end
  end
end
