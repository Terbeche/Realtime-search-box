Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy' end
  root to: "articles#index"

  resources :users, only: [ :index, :show] do
    resources :searches, only: [ :index, :show, :new, :create]
  end
  resources :articles, only: [ :index, :show, :new, :create]

end
