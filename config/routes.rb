Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  get "/post/", to: "posts#index"
  resources :posts
  resources :comments
end
