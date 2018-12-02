Rails.application.routes.draw do
  resources :programs
  resources :faculties
  resources :documents
  resources :commities
  resources :assesments
  resources :administrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index" 
end
