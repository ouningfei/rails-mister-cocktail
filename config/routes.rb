Rails.application.routes.draw do
  get 'doses/destroy'
  get 'doses/new'
  get 'doses/create'
  root :to => 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
