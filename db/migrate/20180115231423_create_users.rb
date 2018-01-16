class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :account_name
      t.integer :account_number

      t.timestamps
    end
  end
end
