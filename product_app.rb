require 'sinatra/base'

class ProductApp < Sinatra::Application
  PRODUCTS_ARRAY = []

  get ('/') do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post ('/') do
    product = params[:product]
    PRODUCTS_ARRAY << product
    redirect '/'
  end

end