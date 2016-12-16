Rails.application.routes.draw do
  
  
  
  get 'shop/index'
  resources :lineitems

  resources :carts do
	resources :lineitems
  end
  resources :lineitems
  resources :order_details
  resources :orders
  resources :comments
  
  get 'search', :to=>'products#search'
  get 'shop', :to=>'shop#index'
  
  controller :session do
       get 'login' => :new 
	   post 'login' => :create
	   get 'logout' => :destroy
	   delete 'logout' => :destroy
	   
	   get 'supplierlogin' => :suppliernew
	   post 'supplierlogin' => :suppliercreate
	   get 'supplierlogout' => :supplierdestroy
	   delete 'supplierlogout' => :supplierdestroy
  end

  resources :customers
  get 'pages/home'
  get 'pages/about'
  resources :products
  resources :suppliers
  resources :areas
  resources :products
  
  resources :products do
			resources :comments
  end
  
 
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'
  #root 'shop#index'

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
  #     #   end
end
