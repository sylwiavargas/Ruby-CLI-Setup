class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :note
      t.integer :destination_id
    end
  end
end
