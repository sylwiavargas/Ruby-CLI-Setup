class Starbucks < ActiveRecord::Base
    has_many :orders 
    has_many :users, through: :orders
end