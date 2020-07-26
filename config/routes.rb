Rails.application.routes.draw do
  resources :forms
  root 'welcome#index'
  devise_for :users

  namespace :auditions do
    resources :forms
  end

  get '/auditions', to: 'auditions#info', as: 'auditions_info'
  get '/auditions/new', to: 'auditions#new', as: 'auditions_new'
  # get '/forms/new', to: 'forms#new', as: 'forms_new'
  # get '/forms/edit/:id', to: 'forms#edit', as: 'forms_edit'
end
