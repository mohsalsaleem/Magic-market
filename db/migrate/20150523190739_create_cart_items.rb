class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :book_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
