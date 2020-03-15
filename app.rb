require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :'/pirates/new' #includes the pirate form on this route
    end

    post '/pirates' do #includes the user submitted pirate data
      @pirate = Pirate.new(params[:pirate]) 
# binding.pry
      params[:pirate][:ships].each do |details| #ships has an array of hashes
        Ship.new(details) # ship.new will use the array of hashes to create a new ship instance
      end
      erb :'/pirates/show' #displays how the results will be shown
    end
  end
end