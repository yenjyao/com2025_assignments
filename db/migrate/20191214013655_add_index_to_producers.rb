#Indexes name of producers
class AddIndexToProducers < ActiveRecord::Migration[5.2]
  def change
    add_index :producers, :name, unique: true
  end
end
