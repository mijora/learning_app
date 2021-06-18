Rails.application.routes.draw do
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :countries
  resources :addresses do
    resources :address_creations
  end
end
