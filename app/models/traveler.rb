class Traveler < ActiveRecord::Base
    has_many :bucket_list_items
    has_many :wishes, through: :bucket_list_items

    def self.create_new_traveler
      travelerInfo = TTY::Prompt.new.ask("What is your username?")
      ageInfo = TTY::Prompt.new.ask("What is your age?")
      traveler = Traveler.create(traveler_name: travelerInfo, traveler_age: ageInfo)
    end
end
