Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :diseases
  resources :genes do
	  collection do
	    get 'search'
	  end
	end
end
