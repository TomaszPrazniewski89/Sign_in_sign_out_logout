Rails.application.routes.draw do
  # get "about", to: "about#index"
  get "about-us", to: "about#index", as: :about


  # get "/", to: "main#index"
  root to: "main#index"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "sign_up", to: "registrations#new"
  post "sign_up", to:"registrations#create"

  delete "logout", to:"sessions#destroy"


  get "sign_in", to: "sessions#new"
  post "sign_in", to:"sessions#create"

  get "password/reset",to:"password_reset#new"
  post "password/reset",to:"password_reset#create"

  get "password/reset/edit",to:"password_reset#edit"
  patch "password/reset",to:"password_reset#update"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
