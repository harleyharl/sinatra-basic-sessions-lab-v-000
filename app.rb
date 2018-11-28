require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    # binding.pry
    @session = session
    session[:item] = params["item"]
  #  binding.pry
    erb :index
  end

  post '/checkout' do
    erb :checkout
    @session = session
  end

end
