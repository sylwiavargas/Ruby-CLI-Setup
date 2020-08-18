class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|
      t.string :traveler_name
      t.integer :traveler_age
    end
  end
end
