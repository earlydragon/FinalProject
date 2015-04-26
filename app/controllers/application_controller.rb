require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'flatironrulz'
  end

  get '/home' do
    erb :index
  end

    get '/females' do
    erb :females
  end

    get '/males' do
    erb :males
  end

  	get '/fpl' do 
  	erb :fpl
  end 

  	get '/mpl' do
    
  	erb :mpl
  end

  	get '/mdq' do 
  	erb :mdq
  end 

  	get '/fdq' do 
  	erb :fdq
  end 


  post '/males' do
  end 

end

