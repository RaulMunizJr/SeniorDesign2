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


  get '/sipocs', to: 'sipocs#index'
  get '/sipocs/new', to: 'sipocs#new'
  post '/sipocs', to: 'sipocs#create'
  get '/sipocs/:id/edit', to: 'sipocs#edit'
  patch '/sipocs/:id', to: 'sipocs#update', as: 'update_sipoc' #submission
  get'/sipocs/:id', to: 'sipocs#show', as: 'show_sipoc' #display
  delete '/sipocs/:id', to: 'sipocs#destroy'


  get '/vsms', to: 'vsms#index'
  get '/vsms/new', to: 'vsms#new', as: 'new_vsm'
  post '/vsms/', to: "vsms#create"
  get '/vsms/:id/edit', to: 'vsms#edit', as: 'edit_vsm'
  patch '/vsms/:id', to: 'vsms#update', as: 'update_vsm' #submission
  get'/vsms/:id', to: 'vsms#show', as: 'show_vsm' #display
  delete '/vsms/:id', to: 'vsms#destroy'


  get '/profile', to: "profile#index"

  #resources :vsm #same as commented above

end
	
	unauthenticated do
		root 'home#index', as: :unauthenticated_root
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
