class HomeController < ApplicationController
  def home
    case
    when current.user.typeaccount ==1 
      parents_home
    when current.user.typeaccount ==2 
      franchise_home
    when current.user.typeaccount ==3
      schools_home
    else
      'Unknown user type? Render error or use a default.'
    end
  end

protected
  def parents_home
    # ...
    #render(:template => 'admin_home')
    render(:template => 'layouts/parents')
  end

  def franchise_home
    # ...
    #render(:template => 'admin_home')
    render(:template => 'layouts/franchise')
  end

  def schools_home
    # ...
    #render(:template => 'admin_home')
    render(:template => 'layouts/schools')
  end
end