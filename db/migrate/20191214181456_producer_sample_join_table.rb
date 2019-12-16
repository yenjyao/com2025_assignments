#Similar to ProducerOgsongJoinTable.
#Used to build a many-to-many relationship between producer and sample.
class ProducerSampleJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :samples, :producers do |t|
      t.index :sample_id
      t.index :producer_id
    end
  end
end
