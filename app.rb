require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    Game.start params[:player1], params[:player2]
    redirect '/players'
  end

  get '/players' do
    @game = Game.current_game
    redirect '/game_over' if @game.game_over?
    erb :players
  end

  get '/attack' do
    @attack = params[:attack]
    @game = Game.current_game
    @game.attack
    erb :attack
  end

  get '/game_over' do
    @game = Game.current_game
    erb :game_over
  end

  run! if app_file == $0
end
