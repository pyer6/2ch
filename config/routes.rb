Rails.application.routes.draw do
  get 'rooms/new'
  root "top#index"
  devise_for :users, controllers: { registrations: 'users/registrations'}
  resources :rooms, only: [:new, :create, :show, :destroy]
end
