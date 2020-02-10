class UsersController < ApplicationController

  get '/' do
    erb :index
  end
  
  get '/signup' do
    logged_in? ? (redirect '/tweets') : (erb :'users/new')
  end
  
  post '/signup' do
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect '/tweets'
  end
  
  get '/login' do
    logged_in? ? (redirect '/tweets') : (erb :'/users/login')
  end
  
  post '/login' do
    user = User.find_by_username(params[:username])
    if user and user.authenticate(params[:password])
      session[user_id] = user.id
      redirect '/tweets'
    else
      redirect '/signup'
  end
  
  get '/logout' do
    if logged_in?
      session.destroy
      redirect '/login'
    else
      redirect '/'
    end
  end
  
  post '/logout' do
    if logged_in?
      session.destroy
      redirect '/login'
    else
      redirect '/'
    end
  end
  
  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    erb :'/users/show'
  end

end
