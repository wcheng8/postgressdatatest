Rails.application.routes.draw do
  resources :toys
  resources :celebrities
  
  get "/foods", to:"foods#index", as: "foods"
  get "/foods/new", to:"foods#new", as: "new_food"
  get "/foods/:id", to: "foods#show", as: "food"
  get "/foods/:id/edit", to: "foods#edit", as: "edit_food"
  
  put "/foods/:id", to: "foods#update"
  post "/foods", to:"foods#create"
  delete "/foods/:id", to: "foods#delete"


# #### Beverages###

  get "/beverages", to:"beverages#index", as: "beverages"
  get "/beverages/:id", to: "beverages#show", as: "beverage"
  get "/beverages/new", to: "beverages#new", as: "new_beverage"
  get "/beverages/:id/edit", to: "beverages#edit", as: "edit_beverage"

  post "/beverages", to: "beverages#create"
  put "/beverages/:id", to: "beverages#update"
  delete "/beverages/:id", to: "beverages#delete"

end
