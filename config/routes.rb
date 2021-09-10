Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :show, :index, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
    resources :bookmarks, only: [:destroy]
end
