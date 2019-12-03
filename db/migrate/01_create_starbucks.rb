class CreateStarbucks < ActiveRecord::Migration[4.2]
    def change 
        create_table :starbucks do |t|
            t.string :name  
        end
    end
end