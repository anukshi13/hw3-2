Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get("/", { :controller => "places", :action => "index" })
  resources :places 
    resources :entries, only: [:new, :create, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
