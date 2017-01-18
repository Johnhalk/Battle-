require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    "Battle!"
    erb(:index)
  end

  post '/names' do
    puts params
    session[:playername1] = params[:playername1]
    session[:playername2] = params[:playername2]
      @playername1 = session[:playername1]
      @playername2 = session[:playername2]
      redirect '/play'
  end

  get '/play' do
    @playername1 = session[:playername1]
    @playername2 = session[:playername2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
