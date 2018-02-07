Rails.application.routes.draw do
  get 'posts/new'
  get '/top' => 'root#top'
  post '/posts' => 'posts#create'
  get '/posts/:id' => 'posts#show', as: 'post'
  get '/posts' => 'posts#index'
end
