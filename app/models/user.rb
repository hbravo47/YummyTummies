class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        has_many :orders, :dependent => :destroy
        has_many :registers, :dependent => :destroy
        PAYMENT_TYPES = [ "Check", "Visa card", "Master card", "Paypal","Bitcoin" ]

end
