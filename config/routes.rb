Rails.application.routes.draw do
  devise_for :users
  root 'negotiations#index'
  resources :users
  resources :customers
  resources :negotiations do
    resources :continuations
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
