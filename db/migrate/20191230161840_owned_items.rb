class OwnedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_items do |t|
      t.integer  :player_id
      t.integer  :item_id
    end
  end
end
