Rails.application.routes.draw do
  root 'pages#home'
  resources :photos do
    member do
      resource :photo_likes, path: 'like', only: [:update]
    end
  end
  resources :photo_comments
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
