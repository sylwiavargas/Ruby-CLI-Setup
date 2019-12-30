class LearnSkill < ActiveRecord::Migration[5.2]
  def change
    create_table :learned_skills do |t|
      t.integer  :player_id
      t.integer  :skill_id
    end
  end
end
