Desndev::Application.routes.draw do

  devise_for :users

  resources :users, :only => [:index, :show]

  root :to => "home#index"
  
end
