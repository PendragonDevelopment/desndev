Desndev::Application.routes.draw do

  devise_for :users

  match 'users/:id/attributes' => 'users#character_attributes'

  resources :users, :only => [:index, :show]

  root :to => "home#index"
  
end
