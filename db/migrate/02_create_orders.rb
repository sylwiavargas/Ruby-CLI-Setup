class CreateOrders < ActiveRecord::Migration[4.2]
    def change 
        create_table :orders do |t|
            t.string :items
            t.string :user_id 
            t.string :starbucks_id 
        end
    end
end