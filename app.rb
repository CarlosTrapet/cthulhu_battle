require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

 enable :sessions
 set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:name_1], params[:name_2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack-conf' do 
    $game.attack($game.player_2)
    erb :attack_confirm
  end

  run! if app_file == $0

end
