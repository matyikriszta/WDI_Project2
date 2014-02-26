Timdr::Application.routes.draw do

  devise_for :users

  put "/users/:id", to: 'users#update', as: 'update_user'

  get "/messages", to: 'messages#inbox', as: 'inbox'
  post "/messages/new/:id", to: 'messages#new_message', as: 'new_message'
  post "/messages", to: 'messages#create_message', as: 'create_message'
  post "/messages/reply/:id", to: 'messages#reply', as: 'reply'
  get "messages/conversation/:id", to: 'messages#conversation', as: 'conversation' 
  get "/messages/outbox", to: 'messages#outbox', as: 'outbox'
  get "/messages/all", to: 'messages#all', as: 'all'
  get "/messages/:id", to: 'messages#mark_as_read', as: 'mark_as_read'

  delete "messages/:id", to: 'messages#destroy_message', as: 'destroy_message'

  resources :images
  resources :likes
  resources :messages
  
  get "/users", to: 'users#index', as: 'users'
  get "/users/search", to: 'users#search', as: 'user_search'
  get "/users/:id", to: 'users#show', as: 'user_profile'
  get "/dashboard", to: 'users#dashboard', as: 'dashboard'
  get "/update_membership", to: 'users#update_membership', as: 'update_membership'
  get "/tags", to: 'tags#index' 

  post "users/like/:id", to: 'likes#create_like', as: 'create_like'
  get '/set_default/:id', to: 'images#set_default', as: 'set_image'
  
  root to: 'home#index'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
