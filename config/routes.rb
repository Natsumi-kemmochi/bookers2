Rails.application.routes.draw do
  
  resources :books, only: [:index, :new, :create, :show, :destroy, :edit, :update]
  devise_for :users
  #get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
end
