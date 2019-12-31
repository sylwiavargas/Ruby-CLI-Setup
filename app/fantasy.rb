prompt = TTY::Prompt.new


class Fantasy
  attr_accessor :prompt 
  # here will be your CLI!
  # it is not an AR class so you need to add attr
  def initialize
    @prompt = TTY::Prompt.new
  end

  def run
    system'clear'


    # currentPlayer = Player.find_or_create_by(name: prompt.select("who are you?", %w(Ark Sir_MeowMeow Turtle Other)))
    # if currentplayer = "Other"
    #   currentPlayer = Player.find_or_create_by(name: prompt.ask("who are you truly?"))
    # end


    currentplayer = prompt.select("New or returning player", %w(New Returning Exit))
    if currentPlayer = "Exit"
      exit!
    end

    if currentplayer = "New" 
      currentplayer = prompt.ask("What are you called?")
    end

    if currentplayer = "Returning" 
      currentplayer = prompt.select("who are you?", Player.all.map{|player_instance| player_instance.name})
    end

    # welcome
    # login_or_signup
    # wanna_see_favs?
    # get_joke(what_subject)
























  end

  private

  
end
