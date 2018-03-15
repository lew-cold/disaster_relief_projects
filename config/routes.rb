Rails.application.routes.draw do
  get 'welcome/index'

  resources :projects

  root 'welcome#index'
end
