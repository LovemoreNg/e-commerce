class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers,primary_key: :customer_id do |t|
       t.string :name 
	      t.string :address
       t.boolean :voided, default: false 
      t.timestamps null: false
    end
  end
end
