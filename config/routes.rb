Rails.application.routes.draw do

  namespace :api do
    resources :billboards

    resources :parents do
      resources :child
    end
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
