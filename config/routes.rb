Rails.application.routes.draw do
  root to: "memos#index"
  devise_for :users
  resources :memos
end
