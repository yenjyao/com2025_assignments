#Creates samples
class CreateSamples < ActiveRecord::Migration[5.2]

  def change
    create_table :samples do |t|
      #Links sample songs with original songs using original songs as a foreign ky
      t.belongs_to :ogsong, foreign_key: true, null: false
      #Title sample song of type string
      t.string :title, null: false
      #Artist of sample song of type string
      t.string :artist, null: false
      #lyrics of song of type text
      t.text :lyrics

      t.timestamps
    end
  end
end
