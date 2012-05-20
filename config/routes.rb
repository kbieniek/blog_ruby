Blog::Application.routes.draw do
  get "user/login"
  root :to => "user#login"

  get "user/process_login"
  post "user/process_login"
  root :to => "home#index"

  get "user/logout"


  get "user/my_account"

  resources :posts do
    resources :comments
  end

	get "home/index"
  root :to => "home#index"


end
