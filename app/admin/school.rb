ActiveAdmin.register School do


index do
    column :name  
    column :address
    column :phone
    column :email
     column :descrption
    column :approved
    actions
  end

  
  filter :name
  filter :email
  
  filter :approved
  
  

 
  form do |f|
    f.inputs "School Details" do
     
      f.input :name
      f.input :email
      f.input :address
      f.input :phone
      f.input :descrption
      f.input :approved
      
     
    end
    f.actions
  end

  
  controller do
    def permitted_params
      params.permit school: [ :name, :address, :email, :approved, :phone,:descrption]
    end
  end

end
