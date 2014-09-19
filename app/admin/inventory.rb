ActiveAdmin.register Inventory do

  menu label: "Inventory", priority: 3

  permit_params :item_type, :item_category, :item_name, :item_sku, :item_description, :item_price, :item_location, :item_vendor, :item_stock, :current_user
 
    index do
    column  "Type",       :item_type
    column  "Category",   :item_category 
    column  "Name",       :item_name
    column  "SKU",        :item_sku
    column  "Description",:item_description
    column  "Price",      :item_price, :sortable => :item_price do |product|
      div :class => "item_price" do
        number_to_currency product.item_price
      end
    end
    column  "Location",   :item_location
    column  "Vendor",     :item_vendor
    column  "Stock",      :item_stock
    actions
    end

    member_action :lock, method: :put do
      inventory.lock!
      redirect_to www.google.com, notice: "Locked!"
    end

  filter :item_type_contains, as: :string,      label: "Type"
  filter :item_category,      as: :string,      label: "Category"
  filter :item_name,          as: :select,      label: "Name"
  filter :item_sku,           as: :string,      label: "SKU"
  filter :item_description,   as: :string,      label: "Description"
  filter :item_price,         as: :numeric,     label: "Price"
  filter :item_location,      as: :check_boxes, label: "Location", collection: ["kitchen warehouse", "garage_warehouse"]
  filter :item_vendor,        as: :string,      label: "vendor"
  filter :item_type_or_item_category_or_item_name_or_item_description_or_item_vendor_or_item_location_contains, as: :string, label: "General Search"


  form do |f|
    f.inputs "Admin Details" do
      f.input :item_type,                       label: "Type"
      f.input :item_category,                   label: "Category"
      f.input :item_name,                       label: "Name"
      f.input :item_sku,                        label: "sku"
      f.input :item_description,                label: "Description"
      f.input :item_price,                      label: "Price"
      f.input :item_location, as: :radio, label: "Location", collection: ["Kitchen Warehouse", "Garage Warehouse"]
      f.input :item_vendor,                     label: "Vendor"
      f.input :item_stock,                      label: "Stock"
    end
    f.actions
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