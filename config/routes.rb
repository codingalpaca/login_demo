Rails.application.routes.draw do
  root 'pages#homepage'
  get 'about' => 'pages#about'

  get '/signup' => 'users#new', as: 'signup'
  resources :users

  get  '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
