class AddIndexToOgsong < ActiveRecord::Migration[5.2]
  def change
    #indexes the title of the original songs
    add_index :ogsongs, :title, unique: true
  end
end
