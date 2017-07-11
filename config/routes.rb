Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/update'

  get 'comments/destroy'

  get 'comments/edit'

  get 'comments/new'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
