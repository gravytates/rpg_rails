Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :items_users
  end

  resources :items do
    resources :items_users
  end

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
