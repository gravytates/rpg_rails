Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :user_items
  end

  resources :user_items

  resources :items do
    resources :user_items
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
