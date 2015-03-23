class Animal < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  belongs_to :adopter, class_name: "User"
  belongs_to :breed
  belongs_to :state
  has_one :post

end
