Rails.application.routes.draw do
  resources :forms
  root 'welcome#index'
  devise_for :users

  get '/auditions', to: 'auditions#info', as: 'auditions_info'
  get '/auditions/new', to: 'auditions#new', as: 'auditions_new'
  get '/forms/new', to: 'forms#new', as: 'forms_new'
  get '/forms/edit/:id', to: 'forms#edit', as: 'forms_edit'

  namespace :member do
    resources :forms, only: [:index, :show, :destroy]
    resources :users, only: [:index, :destroy]
    get 'users/toggle_admin/:id', to: 'users#toggle_admin', as: 'user_toggle_admin'
  end
end
