Rails.application.routes.draw do
  resources :pages do
    resources :contents, only: [:new, :show, :edit, :create, :update, :destroy]
  end
  root 'pages#index'
end
