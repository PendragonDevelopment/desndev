Desndev::Application.routes.draw do

  devise_for :users

  resources :users, :only => [:index, :show] do
  	resources :characters
  end

  root :to => "home#index"
  
end
