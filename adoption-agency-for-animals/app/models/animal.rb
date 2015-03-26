class Animal < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  belongs_to :adopter, class_name: "User"
  belongs_to :breed
  belongs_to :state
  has_one :post

  def self.species_by_state(species_name, state_id)
    Species.find_by(name: species_name).animals.find_by(state_id: state_id)
  end
end
