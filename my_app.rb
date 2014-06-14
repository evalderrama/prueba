require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/hello' do
    haml :hello
  end

  post '/hello' do
    @name = params[:name]
    haml :hello
  end
end
