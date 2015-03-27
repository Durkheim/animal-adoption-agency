class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.belongs_to :breed
      t.belongs_to :state
      t.belongs_to :owner
      t.belongs_to :adopter
      t.boolean :adopted, default: false
    end
  end
end
