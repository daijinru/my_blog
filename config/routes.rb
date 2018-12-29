Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end

  root 'home#index'
end
