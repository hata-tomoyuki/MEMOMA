Rails.application.routes.draw do
  devise_for :users
  root "themes#index"

  resources :themes, only: [:index, :create, :show, :destroy, :edit, :update] do
    resources :posts, only: [:index, :create, :destroy]
    resources :summaries, only: [:index, :create, :destroy, :edit, :update]
  end

end
