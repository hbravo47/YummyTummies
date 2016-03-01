class Register < ActiveRecord::Base
  belongs_to :schools
  belongs_to :user
end
