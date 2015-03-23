class Breed < ActiveRecord::Base
  belongs_to :species
  has_many :animals
  has_many :posts, through: :animals
end
