class PhoneTypo < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :number
    remove_column :users, :account_typephone
    add_column  :users, :phone_number, :string
    add_column  :users, :account_type, :string
  end
end
