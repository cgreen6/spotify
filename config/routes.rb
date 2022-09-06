Rails.application.routes.draw do

  namespace :api do
    get 'billboard/skip-routes'
    resources :billboards

    # resources :parents do
    #   resources :child
    # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end

  namespace :api do
    resources :songs, :artists, :billboards
  end
end