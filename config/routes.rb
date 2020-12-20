Rails.application.routes.draw do
  resources :carts do
    member do
      patch :pay_with
      put :pay_with
    end
  end
  resources :oneclicks
  resources :webpays
  resources :credit_cards
  resources :transbanks
  resources :stripes
  resources :paypals
  resources :payments
  resources :orders
  resources :images
  resources :physicals
  resources :digitals
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
