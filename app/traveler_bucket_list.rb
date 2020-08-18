class TravelerBucketList
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  attr_reader :prompt
  attr_accessor :traveler

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Hello!"
  end

  def welcome_menu
    prompt.select ("Welcome to our our Application. What would you like to do?") do |menu|
        menu.choice "See All Wishes", -> { puts "You chose 1" }
        menu.choice "See All Destinations", -> { puts "You chose 2" }
        menu.choice "Create a User", -> { Traveler.create_new_traveler() }
    end
  end
  

  def user_helper
    travelerReturnValue = Traveler.register()
        until travelerReturnValue
            travelerReturnValue = Traveler.register
        end
        self.traveler = travelerReturnValue
        self.main_menu
    end

  #   def main_menu
  #       puts "Welcome, #{self.traveler.name}"
  #       prompt.select{"Choose something to do"} do |menu|
  #           menu.choiсe "See my wishes"
  #       end
  #   end

  def run
    welcome
    welcome_menu
    # login_or_signup
    # wanna_see_favs?
    # get_joke(what_subject)
  end

  private
  
end
