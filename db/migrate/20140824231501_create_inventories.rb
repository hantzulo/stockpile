class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
    	t.string		:item_type
    	t.string		:item_category
    	t.string		:item_name
    	t.string		:item_sku
    	t.string		:item_description
    	t.decimal		:item_price, :precision => 10, :scale => 2
    	t.string		:item_location
    	t.string		:item_vendor
    	t.integer		:item_stock

      t.timestamps
    end
  end
end
