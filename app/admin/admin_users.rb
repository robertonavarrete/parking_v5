ActiveAdmin.register AdminUser do
  permit_params :email,  :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :last_name, :identification_type, :identification_number

  index do
    selectable_column
    id_column
    column :name
    column :last_name
    column :identification_type
    column :identification_number
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  


  form do |f|
    f.inputs do
      f.input :name
      f.input :last_name
      f.input :identification_type
      f.input :identification_number
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
