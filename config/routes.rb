Rails.application.routes.draw do
<<<<<<< HEAD
  resources :productcategory
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products", to: "product#index"
  get "/product/detail", to: "product#show"
  post "product", to: "product#create"
  delete "product/delete", to: "product#destroy"
>>>>>>> 10923ccc5f79e5a237a814d74ffa51cfdcf00850
end
