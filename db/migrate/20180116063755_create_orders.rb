class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.float :cubic_meters
      t.integer :weight
      t.string :order_status
      t.float :ask
      t.string :vendor
      t.string :driver
      t.datetime :delivery_deadline
      t.datetime :delivery_timestamp

      t.timestamps
    end
  end
end
