Rails.application.routes.draw do
 
  root "main#index"
  constraints subdomain: "box" do
    get 'main/box'
  end
  constraints subdomain: "xob" do
    get 'main/xob'
    get "/", to: "main#xob"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  constraints subdomain: /.+/ do
    get '/products', to: 'products#index'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
