Rails.application.routes.draw do
  resources :reading_responses
  resources :reviews
  resources :books
  resources :students
  resources :teachers
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
end
