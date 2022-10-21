Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'technologies/index'
      get 'technologies/show'
    end
  end
  root 'home#index'
   namespace :api do
    namespace :v1 do
     resources :projects do
      get "technologies", to: "technologies"
     end
    end
   end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
