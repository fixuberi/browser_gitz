Rails.application.routes.draw do
  post   'likes', to: 'likes#create'
  delete 'likes', to: 'likes#destroy'

  get 'repos' , to: 'repos#index'
  get 'repos/show'
  get 'git_users/show'
  root to: 'home#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
