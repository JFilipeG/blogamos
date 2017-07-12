Rails.application.routes.draw do

  devise_for :users
  root to: 'posts#index'

  resources :posts do
    collection do
      get :all
      get :my
    end

    resources :comments, except: [:index, :show]
  end
end
