LinkedinUpcV321::Application.routes.draw do

  root :to => "sessions#index"

  match "home" => "sessions#index"
  match "tipoDocumentos" => "doc_types#index"
  match "tipoUsuarios" => "user_types#index"
  match "usuarios" => "users#index"
  match "asistencias" => "assistances#index"

  match "estilos" => "styles#index"
  match "bandas" => "bands#index"
  match "distritos" => "districts#index"
  match "locales" => "locals#index"
  match "conciertos" => "concerts#index"
  match "comentarios" => "comments#index"
  
  
  get "logout" => "sessions#destroy", :as => "logout"

  get "registrarse" => "sessions#new", :as => "registrarse"
  

  resources :application
  
  resources :sexes

  resources :sessions
  
  resources :logins

  resources :comments


  resources :assistances


  resources :concerts


  resources :locals


  resources :bands


  resources :districts


  resources :doc_types


  resources :user_types


  resources :styles


  resources :users


  resources :users_bands


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
