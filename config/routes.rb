Rails.application.routes.draw do

  resources :users
  resources :order_tickets
  resources :menu_items
  resources :parties
  resources :tables

  root 'welcome#index'

  get '/new' => 'users#new'
  get '/log_in' => 'users#log_in'
  get '/profile' => 'users#profile'
  get '/parties' => 'parties#index'
  get '/parties/new' => 'parties#new'
  get '/tables' => 'tables#index'
  get '/order_tickets' => 'order_tickets#index'

  post 'menu_items/:id/edit' => 'menu_items#edit'
  post 'parties/:id/edit' => 'parties#edit'
  post 'tables/:id/edit' => 'tables#edit'

  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  post '/order_tickets/:id/complete' => 'order_tickets#complete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
