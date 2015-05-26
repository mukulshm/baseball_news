Rails.application.routes.draw do
  get("/", { :controller => "logos", :action => "index" })
  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  # Routes for the Platform resource:
  # CREATE
  get "/platforms/new", :controller => "platforms", :action => "new"
  post "/create_platform", :controller => "platforms", :action => "create"

  # READ
  get "/platforms", :controller => "platforms", :action => "index"
  get "/platforms/:id", :controller => "platforms", :action => "show"

  # UPDATE
  get "/platforms/:id/edit", :controller => "platforms", :action => "edit"
  post "/update_platform/:id", :controller => "platforms", :action => "update"

  # DELETE
  get "/delete_platform/:id", :controller => "platforms", :action => "destroy"
  #------------------------------

  # Routes for the Path resource:
  # CREATE
  get "/paths/new", :controller => "paths", :action => "new"
  post "/create_path", :controller => "paths", :action => "create"

  # READ
  get "/paths", :controller => "paths", :action => "index"
  get "/paths/:id", :controller => "paths", :action => "show"

  # UPDATE
  get "/paths/:id/edit", :controller => "paths", :action => "edit"
  post "/update_path/:id", :controller => "paths", :action => "update"

  # DELETE
  get "/delete_path/:id", :controller => "paths", :action => "destroy"
  #------------------------------

  # Routes for the Logo resource:
  # CREATE
  get "/logos/new", :controller => "logos", :action => "new"
  post "/create_logo", :controller => "logos", :action => "create"

  # READ
  get "/logos", :controller => "logos", :action => "index"
  get "/logos/:id", :controller => "logos", :action => "show"

  # UPDATE
  get "/logos/:id/edit", :controller => "logos", :action => "edit"
  post "/update_logo/:id", :controller => "logos", :action => "update"

  # DELETE
  get "/delete_logo/:id", :controller => "logos", :action => "destroy"
  #------------------------------

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
