Rails.application.routes.draw do

  root 'home#index'
   namespace :api do
    namespace :v1 do
     resources :projects do
      get "technologies", to: "technologies"
     end
     resources :technologies, only: %i[index]
     resources :messages, only: %i[index show create]
    end
   end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
