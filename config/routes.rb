Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  defaults format: :json do
    namespace :api do
      namespace :v1 do
        get 'get_route/:id', to: 'routes#get'
        put 'pickup/:id', to: 'pickup#create'
      end
    end
  end
end
