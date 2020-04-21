Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "pages#index"
get "pages/help"

get  '/login', to: 'sessions#new'
post  '/login', to: 'sessions#create'
get  '/logout', to: 'sessions#destroy'

resources :users
resources :topics

get 'favorites/index'
  post '/favorites', to: 'favorites#create'
end
