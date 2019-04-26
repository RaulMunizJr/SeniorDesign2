Rails.application.routes.draw do

  resources :sipocs
  devise_for :users
  devise_scope :user do
	authenticated :user do
  get 'home/index'
  root 'home#index'

  get '/dashboard', to: "dashboard#index"

  get :tool1, to: "dashboard#tool1"
  get :tool2, to: "dashboard#tool2"
  get :nothing, to: "dashboard#nothing"

  get '/vsms', to: 'vsms#index'
  get '/vsms/new', to: 'vsms#new', as: 'new_vsm'
  post '/vsms/', to: "vsms#create"
  get '/vsms/:id/edit', to: "vsms#edit", as: 'edit_vsm'
  patch '/vsms/:id', to: 'vsms#update' #submission
  get'/vsms/:id', to: 'vsms#show' #display
  delete '/vsms/:id', to: 'vsms#destroy'

  #resources :vsm #same as commented above

end
	
	unauthenticated do
		root 'home#index', as: :unauthenticated_root
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
