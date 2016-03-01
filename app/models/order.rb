class Order < ActiveRecord::Base
 has_one :meal
 belongs_to :user
 belongs_to :franchises
 belongs_to :schools
     def self.search(query)
    where(:kidsID =>query) 
      end
end
