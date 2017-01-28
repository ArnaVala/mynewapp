Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}, :controllers => { :registrations => "user_registrations" }
  
  resources :products do
    resources :comments
  end

  resources :users
  resources :payments
  #resources :payments, only:[:create]

  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/about'

  get 'static_pages/contact'
  post 'static_pages/thank_you'

  get 'static_pages/index'
  get 'static_pages/landing_page'

  post '/payments/create'

  root 'static_pages#landing_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

