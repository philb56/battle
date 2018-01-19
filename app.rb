require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.new_game(player_1,player_2)
    redirect '/play'
  end

  before do
    @game = Game.game_instance
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    @game.switch_turns
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
