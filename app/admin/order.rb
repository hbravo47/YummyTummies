ActiveAdmin.register Order do

 index do
    column :user_id
    column :kidsID
    column :mealID
    column :day
    actions
  end

  
  filter :day
  filter :user_id
    filter :kidsID


  form do |f|
    f.inputs "Order" do
      f.input :user_id
      f.input :kidsID
      f.input :mealID
      f.date_select :day
    
    end
    f.actions
  end
controller do
    def permitted_params
      params.permit order: [:user_id, :kidsID, :mealID,:day]
    end
  end


end
