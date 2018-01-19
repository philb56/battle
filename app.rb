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
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    p "B---------"
    p @game.current_turn
    p @game.player_1
    p @game.player_2
    p "/B---------"
    @game.attack
    p "A---------"
    p @game.current_turn
    p @game.player_1
    p @game.player_2
    p "/A---------"
    @game.switch_turns
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
