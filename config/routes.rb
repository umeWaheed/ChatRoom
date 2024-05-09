Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :chats, only: [:show]
    resources :users, only: [:show]
    resources :messages, only: [:show]
  end
end
