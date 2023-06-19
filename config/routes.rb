Rails.application.routes.draw do
resources :posts do
  resources :comments, only: [:create, :show]
end

resources :postings
  root "home#hero"
  
  get '/posts', to: 'posts#index', as: 'user_root'
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  } 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
