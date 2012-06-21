Desndev::Application.routes.draw do

  get "users/index"

  get "users/show"

  devise_for :users

  match '/users/:id', :to => 'users#show', :as => :user

  root :to => "home#index"
  
end
