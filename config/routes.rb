Rails.application.routes.draw do
  scope :api do


    resources :arenas
    resources :events
    resources :robots
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'robots', to: 'robots#create'
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
