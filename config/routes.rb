Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/upload',  to: 'resumes#new'
  post   '/upload',  to: 'resumes#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'

  resources :users
  resources :resumes, only: [:index, :new, :create, :destroy]

end
