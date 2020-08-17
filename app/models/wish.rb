class Wish < ActiveRecord::Base
  belongs_to :destination
  has_many :bucket_list_items
  has_many :travelers, through: :bucket_list_items
end
