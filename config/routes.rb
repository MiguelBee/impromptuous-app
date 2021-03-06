Rails.application.routes.draw do
  get 'eat_outs/create'

  get 'eat_outs/show'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "orders#index"
	resources :orders, only: :index
	resources :deliveries, only: [:show, :create] 
	resources :eat_outs, only: [:show, :create]
	
#get "delivery/:id", to: "orders#delivery", as: "delivery"
#post 'delivery', to: 'orders#create_delivery', as: "create_delivery"
#get "eat_out/:id", to: "orders#eat_out", as: "eat_out"
#post 'eat_out', to: "orders#create_eat_out", as: "create_eat_out"
#get "quick-search", to: "orders#new_quick_search", as: "quick_search"
#post "quick-search", to: "orders#create_quick_search", as: "create_quick_search"


end