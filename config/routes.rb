Rails.application.routes.draw do

  root 'home#index'
   namespace :api do
    namespace :v1 do
     resources :projects, only: %i[index]
     resources :technologies, only: %i[index]
     resources :messages, only: %i[index show create]
     get "get_authentication_token", to: "authentications#form_token"
    end
   end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
