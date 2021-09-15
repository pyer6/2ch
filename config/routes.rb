Rails.application.routes.draw do
  root "top#index"
  devise_for :users, controllers: { registrations: 'users/registrations'}
  devise_scope :user do
    post "/users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  resources :rooms, only: [:new, :create, :show, :destroy] do
    resources :talks, only: [:create, :destroy]
  end
end
