class Order < ActiveRecord::Base
    belongs_to :starbucks
    belongs_to :user
    
end