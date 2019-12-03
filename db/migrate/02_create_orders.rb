class CreateOrders < ActiveRecord::Migration[4.2]
    def change 
        create_table :orders do |t|
            t.string :user_id 
            t.string :starbucks_id 
            # t.string :item_
        end
    end
end