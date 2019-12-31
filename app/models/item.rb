class Item < ActiveRecord::Base
  has_many :players
  has_many :players, through: :owned_items
  # add associatons!
end
