Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books do
    resource :favorite, only: [:create, :destroy], as: 'favorites'
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users
  get '/home/about' => "homes#about", as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
