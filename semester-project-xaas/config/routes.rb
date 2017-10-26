Rails.application.routes.draw do
  resources :orders, :items
  devise_for :customers
  get 'welcome/index'
  get '/cart', to: "items#cart", as: "cart"
  get '/checkout', to: "orders#new", as: "check_out"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
