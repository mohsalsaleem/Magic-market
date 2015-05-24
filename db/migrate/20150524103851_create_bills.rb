class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :promocode
      t.string :paid
      t.references :book, index: true, foreign_key: true
      t.references :order_status, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
