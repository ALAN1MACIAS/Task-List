Rails.application.routes.draw do
  resources :userconfigs
  get 'welcome/index'
  devise_for :users
  resources :taskstorages do
    resources :tasks
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
