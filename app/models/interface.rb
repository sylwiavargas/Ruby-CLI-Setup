class Interface 
    attr_reader :prompt 

    def initialize()
        @prompt = TTY::Prompt.new 
    end

    def welcome
        puts "Welcome to Starbucks!"
        sleep(1)
        puts "Would you like to log in or sign up?" 
        
    end
end