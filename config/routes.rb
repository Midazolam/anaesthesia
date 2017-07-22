Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :patients

  root to: "patients#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
