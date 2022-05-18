Rails.application.routes.draw do
  resources :articles
  resources :users
  root to: "home#index"

  # namespace :api do
  #   namespace :v1 do
  #     mount_devise_token_auth_for "User", at: "auth", controllers: {
  #       registrations: "api/v1/auth/registrations",
  #     }
  #     #   end
  # end
end
