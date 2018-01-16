class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :account_code
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
