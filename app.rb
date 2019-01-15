require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :sessions_secret, "secret"
  end

  get '/' do
   
  
    erb :index
  end

  post '/checkout' do
    @session = params[:item]
    @session[:item] = @item
    '#{@item]'
  end

end