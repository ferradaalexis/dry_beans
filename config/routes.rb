Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  defaults format: :json do
    namespace :api do
      namespace :v1 do
        resources :routes, only: [:show]
        resources :pickup, only: [:create]
      end
    end
  end
end
