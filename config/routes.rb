Rails.application.routes.draw do
  root 'pages#index'
  get '/dashboard', to: 'users#dashboard'
  post 'users/update'
  get 'pages/about'
  get 'pages/contact'
  devise_for :users,
              path: '', 
              path_names: {sign_up: 'register', sign_in: 'login', sign_out: 'logout', edit: 'profile'}, 
              controllers: { omniauth_callbacks: 'omniauth_callbacks', 
                             registrations: 'registrations'
                            }
end
