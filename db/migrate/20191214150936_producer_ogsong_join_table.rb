#Joins the producer and original song as it is a many to many relationship.
#Turns it into a one-to-many using this table
#One original song has many of this.
#As well as one producer has many of this.
class ProducerOgsongJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :ogsongs, :producers do |t|
      t.index :ogsong_id
      t.index :producer_id
    end
  end
end
