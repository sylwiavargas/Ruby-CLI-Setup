class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :owned_items
      t.integer :learned_skills

      t.timestamps
    end
  end
end
