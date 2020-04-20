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

end
