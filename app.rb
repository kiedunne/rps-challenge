require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'

class RPS < Sinatra::Base

enable :sessions
set :sessions_secret, 'My session secret'

get '/' do
  erb(:index)
end

post '/login' do
  session[:name] = params[:name]
  redirect '/play'
end

get '/play' do
  @name = session[:name]
 erb(:play)
end

get '/result' do

 erb(:result)
end

run! if app_file == $0
end
