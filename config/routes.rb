Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :group do
    member do
      post 'add_expense', to: 'group#add_expense'
    end
  end
  resources :expense
  root to: "splash#index"
  
end
