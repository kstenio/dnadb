Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :genes do
	  collection do
	    get 'search'
	    post 'search'
	  end
	end
end
