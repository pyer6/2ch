Rails.application.routes.draw do
  root "top#index"
  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :rooms, only: [:new, :create, :show, :destroy] do
    resources :talks, only: [:create, :destroy]
  end
end
