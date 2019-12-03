class AddItemsToOrders < ActiveRecord::Migration[4.2]
    def change 
        add_column :orders, :items, :string
    end
end