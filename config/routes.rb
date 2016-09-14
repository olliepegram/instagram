Rails.application.routes.draw do
  root 'posts#index'
  get 'post/:id/likes', to: 'posts#likes', as: :likes
  get 'post/:id/unlikes', to: 'posts#unlikes', as: :unlikes
  get 'post/:id/togglelikes', to: 'posts#togglelikes', as: :togglelikes
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
