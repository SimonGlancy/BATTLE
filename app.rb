require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base


enable :sessions

  get '/' do
    erb(:player_form)
  end

  post '/names' do
    $game = Game.new(params[:player1],params[:player2])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.attacked_player)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
