Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :courses, only: [:index]
    resources :offers, only: [:index]
    resources :users, only: [:create]
    post "/login", to: "users#login"
  end
end
