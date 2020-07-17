Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  get '/auditions', to: 'auditions#info'
  get '/auditions/new', to: 'auditions#new', as: 'auditions_new'
end
