Rails.application.routes.draw do
  devise_scope :user do
	authenticated :user do
  get 'home/index'
  root 'home#index'

  get '/dashboard', to: "dashboard#index"

  get :tool1, to: "dashboard#tool1"
  get :tool2, to: "dashboard#tool2"
  get :nothing, to: "dashboard#nothing"

end
	
	unauthenticated do
		root 'devise/session#new', as: :unauthenticated_root
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
