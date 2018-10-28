Rails.application.routes.draw do

  resources :categories
  resources :actlogs
  
  namespace :actlogs do
    resources:sums, only: %i(index)
  end


  resources :diaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/new'
end
