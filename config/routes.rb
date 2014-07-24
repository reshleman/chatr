require "monban/constraints/signed_in"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "chats#index", as: :dashboard
  end

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
