require 'sinatra/base'
require './lib/player'

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
    erb :play
  end

  get '/attack' do
    $game.attack($attacked_player)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
