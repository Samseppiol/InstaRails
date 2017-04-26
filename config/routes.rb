Rails.application.routes.draw do
  root 'pages#home'
  resources :photos do
    member do
      resource :photo_likes, path: 'like', only: [:update]
    end
  end
  devise_for :users
  resources :users, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
