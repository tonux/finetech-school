Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'
  get 'eleve/index'
  get 'professeur/index'
  devise_for :users, :controllers => {:registrations=> 'registrations'}

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
