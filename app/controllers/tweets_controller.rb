class TweetsController < ApplicationController

  get '/tweets' do
    erb :'/tweets/tweets'
  end
  
  get '/tweets/new' do
    erb :'/tweets/new'
  end
  
  get '/tweets/:id/edit' do
    erb :'/tweets/edit_tweet'
  end
  
  post '/tweets/:id/edit' do
    erb :'/tweets/show'
  end
  
  get '/tweets/:id' do
    erb :'/tweets/show_tweet'
  end

end
