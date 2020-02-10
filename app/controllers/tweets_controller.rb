class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @tweets = Tweet.all
      erb :'/tweets/tweets'
    else
      redirect '/login'
    end
  end
  
  get '/tweets/new' do
    logged_in? ? (erb :'/tweets/new') : (redirect '/login')
  end
  
  post '/tweets' do
    
  end
  
  get '/tweets/:id/edit' do
    
    erb :'/tweets/edit_tweet'
  end
  
  get '/tweets/:id' do
    
    erb :'/tweets/show_tweet'
  end
  
  patch '/tweets/:id' do
    
  end
  
  delete '/tweets/:id/delete' do
    
  end

end
