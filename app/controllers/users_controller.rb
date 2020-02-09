class UsersController < ApplicationController

  get '/' do
    erb :index
  end
  
  get '/signup' do
    erb :'users/create_user'
  end
  
  post '/signup' do
    redirect "/tweets"
  end
  
  get '/login' do
    erb :'/users/login'
  end
  
  post '/login' do
     redirect "/tweets"
  end
  
  get '/logout' do
    redirect '/login'
    redirect '/'
  end
  
  get '/users/:slug' do
    erb :'/users/show'
  end

end
