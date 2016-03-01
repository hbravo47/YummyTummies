class Franchise < ActiveRecord::Base
  has_many :orders
end
