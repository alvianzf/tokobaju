Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/category", to: "category#index"
  get "/category/detail", to: "category#show"
  post "/category", to: "category#create"
  delete "/category/delete", to: "category#destroy"

end
