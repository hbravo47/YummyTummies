class Meal < ActiveRecord::Base
  belongs_to :meal
  mount_uploader :pic, PictureUploader
end
