Rails.application.routes.draw do
  
  # devise_for :users
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  
  # get 'users/show'
  resources :users, only: [:show]
  
  # get "static_pages/home"
  # get "static_pages/help"
  # get "static_pages/about"
  # get "static_pages/contact"

  # URLを任意でつけられるようになった。→static_pagesをつけずによくなった。
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
