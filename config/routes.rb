Rails.application.routes.draw do
  root 'pages#index'
  resources :reviews
  resources :shows
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '*path', to: 'pages#index', via: :all
end
