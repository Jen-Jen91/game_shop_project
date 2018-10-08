require("sinatra")
require("sinatra/contrib/all")
require_relative("../models/game.rb")
also_reload("../models/*")

get("/games") do
  @games = Game.all()
  erb(:"games/index")
end
