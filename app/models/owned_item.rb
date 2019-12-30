class OwnedItem < ActiveRecord::Base
  belongs_to :player 
  belongs_to :item
    # add associatons!
  end
  