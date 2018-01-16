class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :phone
      t.string :email
      t.string :zipcode
      t.string :state

      t.timestamps
    end
  end
end
