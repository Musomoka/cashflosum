Rails.application.routes.draw do
 
 root 'static_pages#Welcome'
  devise_for :user
  
  authenticated :user do

    resources :cashflows
    get '/Dashboard', to: 'cashflows#dashboard', as: 'dashboard'
    resources :categories
  end

  unauthenticated :user do   
    get 'static_pages/Welcome'
    get '/Welcome', to: 'static_pages#Welcome', as: 'Welcome'

    get 'static_pages/About'

    get 'static_pages/Contact'    
  end

  #get 'categories/category_roots'
end
