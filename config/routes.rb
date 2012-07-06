Desndev::Application.routes.draw do

  devise_for :users

  resources :users, :only => [:index, :show] do
  	resources :characters
  end

  root :to => "home#index"
  
end
#== Route Map
# Generated on 06 Jul 2012 14:45
#
#             user_session POST   /users/sign_in(.:format)                      devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                     devise/sessions#destroy
#            user_password POST   /users/password(.:format)                     devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                 devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                devise/passwords#edit
#                          PUT    /users/password(.:format)                     devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                       devise/registrations#cancel
#        user_registration POST   /users(.:format)                              devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                      devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                         devise/registrations#edit
#                          PUT    /users(.:format)                              devise/registrations#update
#                          DELETE /users(.:format)                              devise/registrations#destroy
#          user_characters GET    /users/:user_id/characters(.:format)          characters#index
#                          POST   /users/:user_id/characters(.:format)          characters#create
#       new_user_character GET    /users/:user_id/characters/new(.:format)      characters#new
#      edit_user_character GET    /users/:user_id/characters/:id/edit(.:format) characters#edit
#           user_character GET    /users/:user_id/characters/:id(.:format)      characters#show
#                          PUT    /users/:user_id/characters/:id(.:format)      characters#update
#                          DELETE /users/:user_id/characters/:id(.:format)      characters#destroy
#                    users GET    /users(.:format)                              users#index
#                     user GET    /users/:id(.:format)                          users#show
#                     root        /                                             home#index
