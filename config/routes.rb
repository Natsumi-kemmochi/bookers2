Rails.application.routes.draw do
  
  devise_for :users
  #get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  resources :books, only: [:index, :create, :show, :destroy, :edit, :update]
  resources :users, only: [:index, :show, :edit, :update]
end
