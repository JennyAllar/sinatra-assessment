require 'sinatra/base'

class ProductApp < Sinatra::Application
  get ('/') do
    erb :index
  end
end