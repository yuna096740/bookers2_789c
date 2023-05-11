Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "homes#top"
  get "home/about"=>"homes#about"
  devise_for :users

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resource :favorites,only: [:create,:destroy]
    resources :book_comments, only: [:create,:destroy]
  end
  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships,only: [:create,:destroy,:index]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relashionships#followers', as: 'followers'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end