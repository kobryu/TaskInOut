Rails.application.routes.draw do

# 管理者用
# URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"

  }

  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update]
    get 'tasks' => 'tasks#index'
  end

  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    get "users/index" => "users#index"
    get "users" => "users#show"
    get "users/mypage/edit" => "users#edit"
    get "users/confirm" => "users#confirm"
    patch "users/withdraw" => "users#withdraw"
    patch "users/update" => "users#update"
    resources :tasks, only: [:index, :show, :create, :edit, :update, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
    resources :groups, only: [:index, :show, :create, :edit, :update] do
      resource :group_users, only: [:create, :destroy]
    end
  end
  get 'homes/top'
  get 'homes/about'

end