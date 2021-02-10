Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'
  get 'eleve/index'
  get 'professeur/index'
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'  
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
