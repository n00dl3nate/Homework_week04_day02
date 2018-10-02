require("sinatra")
require("sinatra/contrib/all")
require("pry")
require_relative('./models/game.rb')
also_reload('./models/*')

get '/play' do

  @result = "Player 1 Please Enter Your Hand Gesture"
  erb(:result)
end

get '/play/:hand1' do

  if params[:hand1] == "rock" || params[:hand1] == "scissors" || params[:hand1] == "paper"
    @result =  "player 2 please enter your hand gesture"
  else
    @result = "please Enter a valid Hand gesture"
  end
  erb(:result)
end


get '/play/:hand1/:hand2' do

  @result = Game.play(params[:hand1],params[:hand2])
  erb(:result)

end

get "/" do
  erb(:home)
end
