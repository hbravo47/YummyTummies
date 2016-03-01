ActiveAdmin.register Register do


 index do
    column :name  
    column :address
    column :school
    column :kidsId
     column :user_id
    column :approved
    actions
  end


  filter :name
  filter :school
  filter :kidsId
  filter :approved
  
  

 
  form do |f|
    f.inputs "Student Details" do
      f.input :name
      f.input :school
      f.input :address
      f.input :kidsId
      f.input :user_id
      f.input :approved
     
    end
    f.actions
  end


  controller do
    def permitted_params
      params.permit register: [ :name, :address, :school, :approved, :kidsId,:user_id]
    end
  end

end


