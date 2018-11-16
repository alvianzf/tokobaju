Rails.application.routes.draw do
  
  resources :productcategory

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  get "/category", to: "category#index"
  get "/category/detail", to: "category#show"
  post "/category", to: "category#create"
  delete "/category/delete", to: "category#destroy"
=======
  get "/products", to: "product#index"
  get "/product/detail", to: "product#show"
  post "product", to: "product#create"
  delete "product/delete", to: "product#destroy"
>>>>>>> f61f72d8f295d31156e088866a92f79bba3ecee3

end
