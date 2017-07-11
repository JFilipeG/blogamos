Rails.application.routes.draw do

  resources :posts do
    resources :comments, except: [:index, :show]
  end
end
