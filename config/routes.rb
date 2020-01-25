Rails.application.routes.draw do

  namespace :admin do
    get 'categories/create'
    get 'categories/update'
    get 'categories/hide'
  end
  root to: 'customers/homes#top'
  devise_for :admins, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords',
    registrations: 'admin/registrations',
  }

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations',
  }
  namespace :customer do
    get 'admins/edit'
    get 'admins/favorites'
  end
  namespace :admin do
    resources :categories

    get 'homes/topic'
    get 'homes/movie'
    get 'homes/music'
    get 'homes/live'
    get 'category/:id' => "homes#category"
    get 'customer_rooms/show'
    get 'rooms/show'
    resources :customers, only: [:index, :show]
    resources :informations
    resources :topics
    resources :lives
    resources :discs
    resources :musics
    resources :videos
    resources :movies
  end
  namespace :customers do
    resources :discs, only: [:index, :show]
    resources :videos, only: [:index, :show]
    resources :lives, only: [:index, :show]
    resources :informations, only: [:index, :show]
  end

  namespace :customer do
    get 'customers/favorites'
  end
  namespace :customers do
    resources :rooms
    resources :customers
    get 'homes/about' => "homes#about"
    get 'homes/biography'=> "homes#biography"
    get 'homes/top'=> "homes#top"
    get ':id/unsubscribe' => "homes#unsubscribe", as: "unsubscribe"
    resources :movies, only: [:index, :show]
    resources :topics, only: [:index, :show]
    resources :musics, only: [:show, :index] do
    resource :favorites, only: [:create, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
