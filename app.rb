require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret,  "shAIzAa12"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session["item"] = params[:item]
    "The item is #{session["item"]}"
  end
end