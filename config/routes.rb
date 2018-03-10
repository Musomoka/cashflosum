Rails.application.routes.draw do
  
  devise_for :users
  root 'static_pages#Welcome'

  get 'static_pages/Welcome'

  get 'static_pages/About'

  get 'static_pages/Contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
