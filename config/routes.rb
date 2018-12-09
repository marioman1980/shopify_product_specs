Rails.application.routes.draw do
  get 'products/create'
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'create_test', to: 'home#create'
  get 'create_test', to: 'home#create'

  get 'product_specs/:id', to: 'products#show', as: :product_specs

  post 'product_create', to: 'product_create_webhook#product_create'

end
