Rails.application.routes.draw do
  devise_for :views
  resources :venues

  

  root 'page#home', as: 'home'

  get 'about' => 'page#about', as: 'about'

  get '/user_page' => 'page#user_page', as: 'user'

  post '/process_user_data/' => 'page#process_user_data'

  post '/request_concert' => 'requests#request_concert'

  devise_for :users, :controllers => { :registrations => "registrations" }

  get '/user_functions' => 'page#user_functions', as: 'user_functions'

  get '/request_form' => 'page#request_form', as: 'request_form'

  get '/venue_page' => 'venues#venue_page'

  get '/venue_page/:id' => 'venues#return_form', as: 'return_form'

  post 'request' => 'requests#return_form'

  patch '/request.:id' => 'requests#update'

  post '/accept/:id' => 'concerts#accept', as: 'accept'

  post '/decline/:id' => 'requests#decline', as: 'decline'

  get '/new_concert/:id' => 'concerts#new_concert', as: 'show_share'

  post '/purchase/:id' => 'concerts#purchase', as: 'buy_ticket'

  get 'mass_email/concert/:id' => 'concerts#email_users', as: 'concert_email'
  
  post 'mass_email/:id' => 'concerts#mass_email', as: 'mass_email'

  post 'refuse/:id' => 'requests#refuse', as: 'refuse' 

  get 'update_profile' =>'page#update_profile', as: 'update_profile'

  

  

  end
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

