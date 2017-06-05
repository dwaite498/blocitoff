Rails.application.routes.draw do


  get 'users/show'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only => [:show] do
    resources :items, :only => [:create, :new, :destroy]
  end
  get 'welcome/about'

  root 'welcome#index'
end
