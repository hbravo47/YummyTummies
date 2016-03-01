ActiveAdmin.register User do


  index do
    column :email
    column :name
    column :password
    column :typeacct
    actions
  end

  # Default is :email, but we need to replace this with :username
  filter :email

  # This is the form for creating a new user using the Admin
  # backend. If you have added additional attributes to the
  # User model, you need to include them here.
  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :name
      f.input :address
      f.input :typeacct
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  # This is related to Rails 4 and how it handles strong parameters.
  # Here we replace :email with :username.
  controller do
    def permitted_params
      params.permit user: [:email, :password, :password_confirmation, :name, :address, :premium, :pay_type,:typeacct]
    end
  end

end
