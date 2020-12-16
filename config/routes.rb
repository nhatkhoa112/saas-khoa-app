Rails.application.routes.draw do
  devise_for :users
  get 'home#index'
  root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controller => {
    :registrations => "milia/registrations",
    :confirmations => "milia/confirmations",
    :sessions => "milia/sessions",
    :password => "milia/password"
  }
end
