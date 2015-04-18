Rails.application.routes.draw do
  devise_for :users

  root 'home#static', as: :home

  namespace :admin do
    resources :dashboard, only: :show
    resources :categories, except: [:new, :show]
    resources :tags, except: [:index, :new, :show]
    resources :products, except: :show
    resources :commission_types, except: [:new, :show]
  end

  resources :products, only: [:index, :show]

  get '/admin' => 'admin/dashboard#show'
  get 'admin/admin_users/' => 'admin/admin_users#index', as: :admin_list
  patch 'admin/admin_users/:id' => 'admin/admin_users#update'
  put 'admin/admin_users/:id' => 'admin/admin_users#update', as: :remove_admin
  post 'admin/admin_users' => 'admin/admin_users#create', as: :add_admin

  # get 'products/get_tags/:category_id' => 'products#get_tags'

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
