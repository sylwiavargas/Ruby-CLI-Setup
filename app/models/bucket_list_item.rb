class BucketListItem < ActiveRecord::Base
  belongs_to :traveler
  belongs_to :wish
end


