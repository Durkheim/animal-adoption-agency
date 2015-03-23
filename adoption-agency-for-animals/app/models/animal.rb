class Animal < ActiveRecord::Base
  belongs_to :owner
  belongs_to :adopter
  belongs_to :breed
  belongs_to :state
  has_one :post

end
