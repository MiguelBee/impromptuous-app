Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "orders#index"
resources :orders
get "delivery", to: "orders#delivery"
get "eat_out", to: "orders#eat_out"
get "quick-search", to: "orders#new_quick_search", as: "quick_search"
post "quick-search", to: "orders#create_quick_search", as: "create_quick_search"


end