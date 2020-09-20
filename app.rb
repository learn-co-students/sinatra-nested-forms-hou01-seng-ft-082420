require './environment'

module FormsLab
  class App < Sinatra::Base

  get "/" do
    erb :root
  end

  get "/new" do 
    erb :"pirates/new"
  end

  post "/pirates" do
    @pirates = Pirate.new(params[:pirate])
   params[:pirate][:ships].each do |ship|
    Ship.new(ship)
   end

   ships = Ship.all 
   @ship1 = ships[0]   
   @ship2 = ships[1] 
    erb :"pirates/show"
  end



  end
end
