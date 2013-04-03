class Product < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :quantity, :size
  belongs_to :user
end
