Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'welcome#index'

  resources :users
  resources :sessions
  delete '/logout' => 'session#destroy', as: :logout 
end
