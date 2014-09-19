ActiveAdmin.register User do
  
  menu priority: 2

  permit_params :email, :password, :password_confirmation, :role

  index do
    selectable_column
    #id_column
    column "Username", :email  
    column :current_sign_in_at
    #column :sign_in_count
    #column :created_at
    column :role
    actions
  end

  config.filters = false
  #filter :email, label: "Username"
  #filter :current_sign_in_at
  #filter :sign_in_count
  #filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email, label: "Username"
      f.input :password
      f.input :password_confirmation
      f.input :role, as: :radio, :collection => ["admin", "warehouse", "sales"]
    end
    f.actions
    action_item only: :show do
      link_to 'superman'
    end
  end

  

end
