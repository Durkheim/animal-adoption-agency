class State < ActiveRecord::Base
  has_many :animals
  has_many :breeds, through: :animals
  has_many :species, through: :breeds
end
