require("sinatra")
require("sinatra/contrib/all")
require("pry")
require_relative('./models/game.rb')
also_reload('./models/*')


get '/play/:hand1/:hand2' do

  @result = Game.play(params[:hand1],params[:hand2])
  erb(:result)

end

get "/" do
  erb(:home)
end
