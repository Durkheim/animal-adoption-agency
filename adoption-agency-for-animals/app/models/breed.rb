class Breed < ActiveRecord::Base
  belongs_to :species
  has_many :animals
  has_many :posts, through: :animals
  has_many :locations, through: :animals, source: :state
end
