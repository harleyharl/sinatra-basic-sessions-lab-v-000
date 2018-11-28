require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @item = Item.new
    @item.name = params[:item]
    # @session = session
    # binding.pry
    erb :checkout
  end

  get '/checkout' do
    session["item"] = params[:item]
  end

end
