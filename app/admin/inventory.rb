ActiveAdmin.register Inventory do

  permit_params :item_type, :item_category, :item_name, :item_sku, :item_description, :item_price, :item_location, :item_vendor, :item_stock

  index do
    column  "Type",       :item_type
    column  "Category",   :item_category 
    column  "Name",       :item_name
    column  "SKU",        :item_sku
    column  "Description",:item_description
    column  "Price",      :item_price
    column  "Location",   :item_location
    column  "Vendor",     :item_vendor
    column  "Stock",      :item_stock
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
