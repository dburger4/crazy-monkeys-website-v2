Rails.application.routes.draw do
  resources :forms
  root 'welcome#index'
  devise_for :users
  get '/auditions', to: 'auditions#info', as: 'auditions_info'
  get '/auditions/new', to: 'auditions#new', as: 'auditions_new'
end
