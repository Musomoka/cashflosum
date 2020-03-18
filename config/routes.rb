Rails.application.routes.draw do
  
  resources :chart_of_accounts
  resources :account_groups
  
  get 'entry_types/new', to: "entry_types#new"
  post 'entry_types/create', to: "entry_types#create"
  root 'static_pages#Welcome'
  devise_for :user
  
  authenticated :user do

    resources :cashflows
    get '/Dashboard', to: 'cashflows#dashboard', as: 'dashboard'
    
    resources :categories
  end

  
    
    
    get 'static_pages/Welcome'
    get '/Welcome', to: 'static_pages#Welcome', as: 'Welcome'

    get 'static_pages/About'

    get 'static_pages/Contact'
 

  #get 'categories/category_roots'
end
