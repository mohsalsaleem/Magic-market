class CreateDeliveryAddresses < ActiveRecord::Migration
  def change
    create_table :delivery_addresses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :phoneno
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
