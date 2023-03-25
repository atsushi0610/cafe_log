Rails.application.routes.draw do
  get 'memos/index'
  devise_for :users
  resources :memos, only: :index
end
