#Creates producers
class CreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :producers do |t|
      #Name of producer of type string
      t.string :name, null: false
      #Email of producer of type string
      t.string :email, null: false
      #telephone of producer of type string
      #Chose string as it may includ area code, e.g +44
      t.string :telephone

      t.timestamps
    end
  end
end
