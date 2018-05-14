require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "underhiseye"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session

  end

end
