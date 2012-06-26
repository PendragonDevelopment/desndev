Desndev::Application.routes.draw do

  devise_for :users

  resources :users, :only => [:index, :show] do
  	resources :characters
  	get 'user/:user_id/characters/new' => 'characters#new'
  end

  root :to => "home#index"
  
end
