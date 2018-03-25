Rails.application.routes.draw do
  resources :expenses
  
  devise_for :users  do
  	
  end

  root 'static_pages#Welcome'

  get 'expenses/dashboard'
  get '/Dashboard', to: 'expenses#dashboard', as: 'dashboard'


  get 'static_pages/Welcome'

  get 'static_pages/About'

  get 'static_pages/Contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
