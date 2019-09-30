Rails.application.routes.draw do
  devise_for :users
  root 'negotiations#index'
  resources :users
  resources :customers
  resources :negotiations do
    collection do
      get :negotiation_list
    end
    resources :continuations do
      resources :cnt_comments
    end
    resources :comments
  end

  resources :notifications, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
