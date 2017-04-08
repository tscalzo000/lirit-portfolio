Rails.application.routes.draw do
  devise_for :users

  root "homepage#index"

  resources :bios, only: [:edit, :update]
  resources :resumes, only: [:edit, :update]
end
