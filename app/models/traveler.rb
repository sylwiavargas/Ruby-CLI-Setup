class Traveler < ActiveRecord::Base
    has_many :bucket_list_items
    has_many :wishes, through: :bucket_list_items
end