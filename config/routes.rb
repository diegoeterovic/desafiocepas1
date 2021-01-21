Rails.application.routes.draw do
  devise_for :users
  resources :strains
  resources :wines
  resources :blends
  resources :reviews
  resources :oenologists

  root "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
