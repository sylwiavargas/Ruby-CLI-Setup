class User < ActiveRecord::Base
    has_many :orders 
    has_many :starbucks, through: :orders

    def self.tty_prompt
        TTY::Prompt.new 
    end 

    def self.handle_existing_user 
        system "clear"
        puts "Enter username"
        answer = gets.chomp.downcase 
        puts "Welcome #{answer}!"
    end






end