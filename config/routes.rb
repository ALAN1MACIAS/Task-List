Rails.application.routes.draw do
  devise_for :users
  resources :taskstorages do
    resources :tasks
  end

  root 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
