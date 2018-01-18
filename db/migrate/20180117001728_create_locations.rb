class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :phone
      t.string :email
      t.string :zipcode
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
