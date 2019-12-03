class CreateItem < ActiveRecord::Migration[4.2]
    def change 
        create_table :items do |t|
            t.string :item_name
        end
    end
end