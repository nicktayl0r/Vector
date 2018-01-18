class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :origin
      t.string :destination
      t.string :carrier
      t.string :vendor
      t.datetime :delivery_deadline
      t.datetime :delivery_timestamp
      t.float :price
      t.string :status
      t.integer :weight
      t.float :cube
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
