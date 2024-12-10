Rails.application.routes.draw do
  # Root route
  root 'main#index'

  # Match routes
  match 'about', to: 'main#about', via: 'get'


  # Resourceful routes
  resources :posts do
    member do
      get :delete
    end
  end

  resources :categories do
    member do
      get :delete
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
