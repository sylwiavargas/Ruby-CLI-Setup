class StarbucksApp
    attr_reader :prompt, :users
    attr_accessor :orders, :starbucks, :items
    @@cart = []
    
    def initialize()
        @prompt = TTY::Prompt.new 
    end

    def run 
        welcome
        log_in
        select_starbucks
        select_item
        # view_cart
    end 

    def welcome
        puts "Welcome to Starbucks!😜😜"
    end 

    def log_in
        choice = self.prompt.select("Would you like to log in or sign up?") do |menu|
            menu.choice "Log in", -> {User.handle_existing_user}
            menu.choice "Sign up", -> {User.handle_new_user}
            user_man = User.all.last 
        end 
    end 

    def select_starbucks 
        # only if signing up
        system 'clear'
        choice = self.prompt.select("Please select a local Starbucks location") do |menu|
            menu.choice "Starbucks of Brooklyn", -> {Order.create(user_id: User.all.last.id, starbucks_id: Starbucks.all.first.id)}
            menu.choice "Starbucks of Manhattan", -> {Order.create(user_id: User.all.last.id, starbucks_id: Starbucks.all.second.id)}
        end 
    end

    def select_item
        drinks = %w(coffee tea latte water cappucino)
        selected_drinks = prompt.multi_select("Select drinks?",drinks)
        @@cart << selected_drinks
        self.view_cart
    end

    def view_cart 
        puts "You selected #{@@cart.join(", ")}"
        choice = self.prompt.select("Would you like to?") do |menu|
            menu.choice "Add to cart", -> {self.select_item}
            menu.choice "Remove item from cart", -> {self.remove_items}
            menu.choice "Proceed to checkout", -> {}
            menu.choice "Break your computer????"
        end 
    end

    def remove_items
        puts  "What item would you like to remove?"
        answer = gets.chomp.downcase 
        # if @@cart.include?(answer)
            @@cart.delete(answer)
        # else 
        #    puts  "item not found"
        # end 
        sleep(0.6)
        view_cart
    end
end

#  loop through @@cart with include? if cart includes delete item 
