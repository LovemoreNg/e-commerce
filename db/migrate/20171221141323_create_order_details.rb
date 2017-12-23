class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details, primary_key: :details_id do |t|
       t.integer :item_id
       t.integer :order_id 
	   t.integer :quantity
      t.timestamps null: false
    end
  end
end
