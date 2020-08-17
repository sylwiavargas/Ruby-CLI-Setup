class CreateBucketListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :bucket_list_items do |t|
      t.boolean :wish_completed, default: false
      t.integer :traveler_id
      t.integer :wish_id
    end
  end
end
