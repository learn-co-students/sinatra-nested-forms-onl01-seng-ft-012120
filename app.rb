require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do 
      pirate_info = params['pirate'].reject{|k,v| k =='ships'}.transform_keys!(&:to_sym)
      ships_info = params['pirate']['ships']

      ships_info.each{|ship| Ship.new(ship.to_h.transform_keys!(&:to_sym))}

      @ships = Ship.all
      @pirate = Pirate.new(pirate_info)
      
      erb :'pirates/show'
    end

  end
end
