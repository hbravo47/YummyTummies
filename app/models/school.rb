class School < ActiveRecord::Base
   has_many :registers, :dependent => :destroy
  has_many :orders
  
end
