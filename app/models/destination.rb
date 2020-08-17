class Destination < ActiveRecord::Base
    has_many :wishes
    has_many :bucket_list_items, through: :wishes
end
