Rails.application.routes.draw do
  devise_for :users

  resources :restaurants, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [:create]
  end




  root to: 'pages#home'
end
