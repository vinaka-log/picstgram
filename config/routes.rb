Rails.application.routes.draw do
  get 'comments/new'
  post 'comments/', to: "comments#create"
  get 'comments/destroy'
 get 'topics/new'
 get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics do
    resources :comments, only: [:create, :new]#ルーティングのネスト
  end
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end