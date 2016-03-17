require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base


enable :sessions

  get '/' do
    erb(:player_form)
  end

  post '/names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    $game = Game.new(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.players[0].name
    @player2 = $game.players[1].name
    erb :play
  end

  get '/attack' do
    @player1 = $game.players[0].name
    @player2 = $game.players[1].name
    $game.attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
