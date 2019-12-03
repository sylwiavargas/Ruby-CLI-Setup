# class JokeApp
  # here will be your CLI!
  # it is not an AR class so you need to add attr

  # def run
    # welcome
    # login_or_signup
    # wanna_see_favs?
    # get_joke(what_subject)
#   end

#   private

  
# end

class StarbucksApp
  attr_reader :prompt 

     def initialize()
      @prompt = TTY::Prompt.new 
     end

    def run 
        welcome
    end 

    def welcome
      puts "Welcome to Starbucks!"
      sleep(0.7)
      choice = self.prompt.select("Would you like to log in or sign up?") do |menu|
        menu.choice "Log in", -> {User.handle_existing_user}
        menu.choice "Sign up", -> {User.handle_new_user}
      end 
    end
end
