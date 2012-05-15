Blog::Application.routes.draw do
  get "user/login"

  get "user/process_login"

  get "user/logout"

  get "user/my_account"

  resources :posts do
    resources :comments
  end

	get "home/index"
	root :to => "home#index"

end
