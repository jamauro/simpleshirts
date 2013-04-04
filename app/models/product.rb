class Product < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :price, :quantity, :size, :photo

  belongs_to :user

  has_attached_file :photo, :styles => { :big => "800x600#" },
  					:url => "/assets/products/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes

  validates :description, :length => { :maximum => 140 }
end
