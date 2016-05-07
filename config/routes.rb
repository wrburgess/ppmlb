Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :user

  root to: "static#home"

  resources :players
end
