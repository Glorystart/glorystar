Rails.application.routes.draw do
  resources :notifications

  resources :members

  resources :pages do
    resources :contents
  end
  root 'pages#index'
end
