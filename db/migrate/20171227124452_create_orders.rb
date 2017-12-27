class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders, primary_key: :order_id do |t|
      t.integer :customer_id, null:false
      t.datetime :order_date, null:false
      t.boolean :voided, default: false
      t.timestamps null: false
    end
  end
end
