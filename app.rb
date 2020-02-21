require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do 
      erb :'/pirates/new'
    end

    post '/pirates' do 
      #{"name"=>"", "weight"=>"", "height"=>"", "ships"=>[{"name"=>"", "type"=>"", "booty"=>""}, {"name"=>"", "type"=>"", "booty"=>""}]}
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      erb :'/pirates/show'
    end

  end
end
