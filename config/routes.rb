Rails.application.routes.draw do

	devise_for :users,controllers: {
	    registrations: "users/registrations",
	    omniauth_callbacks: "users/omniauth_callbacks"
	  }
  root 'topics#index'

  resources :topics, shallow: true do
		collection do
      get :mypage
    end
    resources :comments, only: [:new, :index, :create,:edit, :update, :destroy] do
    end
  end

	resources :pictures, only: [:new, :index, :create,:edit, :update, :destroy]
	resources :users, only: [:index, :show]
	resources :relationships, only: [:create, :destroy]
	resources :conversations do
  	resources :messages
	end

	if Rails.env.development?
  	mount LetterOpenerWeb::Engine, at: "/letter_opener"
	end

end
