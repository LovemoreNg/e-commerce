class CreateItems < ActiveRecord::Migration
  def change
    create_table :items,primary_key: :item_id  do |t|
		t.string :name
        t.string :price
        t.boolean :voided, default: false

      t.timestamps null: false
    end
  end
end



       
