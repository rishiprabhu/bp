Bp::Application.routes.draw do
  root :to => "products#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :products, only: [:index]
  resources :users
end
