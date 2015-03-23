class Species < ActiveRecord::Base
  has_many :breeds
  has_many :animals, through: :breeds
  has_many :posts, through: :breeds
end
