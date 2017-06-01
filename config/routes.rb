Rails.application.routes.draw do


  get 'users/show'

  devise_for :users, :path_prefix => 'd'
resources :users, :only => [:show]
  get 'welcome/about'

  root 'welcome#index'
end
