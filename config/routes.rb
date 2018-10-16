Rails.application.routes.draw do
  resources :categories do
    resources :actlogs
  end

  resources :diaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/new'
end
