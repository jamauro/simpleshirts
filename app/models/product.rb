class Product < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :price, :quantity, :size

  belongs_to :user

  validates :description, :length => { :maximum => 140 }
end
