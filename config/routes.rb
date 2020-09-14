Rails.application.routes.draw do

  # トップページ
  root "tops#index"

  # ユーザー関連
  get "users/new", to: "users#new", as: "users_new"

  post "users/create", to: "users#create", as: "users_create"

  get "users/index", to: "users#index", as: "users_index"

  get "users/show/:id", to: "users#show", as: "users_show"

  get "users/edit", to: "users#edit", as: "users_edit"

  # ログイン・ログアウト
  get "login", to: "sessions#new", as: "login_form"

  post "login", to: "sessions#create", as: "login"

  delete "logout", to: "sessions#destroy", as: "logout"
  # delete "logout", to: "sessions#delete", as: "logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
