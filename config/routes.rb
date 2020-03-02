# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teachers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/pages/:page' => 'pages#show'
  root 'pages#show', page: 'home'
end
