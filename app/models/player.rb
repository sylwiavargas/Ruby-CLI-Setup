class Player < ActiveRecord::Base
    has_many :owned_items
    has_many :items, through: :owned_items
    
    # has_many :learned_skill, :owned_item

    def items
        self.Items.all
        
    end

# add associatons!
end
