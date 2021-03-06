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

  post '/attack' do 
    $game.attack
    $game.switch_turns
    if $game.game_over?
      redirect '/game-over'
    end
    erb :attack
  end

  get 'game-over' do 
    erb :game_over
  end

  run! if app_file == $0
end
