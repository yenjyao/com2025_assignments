#Routes for all of the models
Rails.application.routes.draw do
  resources :producers
  resources :samples
  devise_for :users
  resources :ogsongs
  #root link
  root 'home#home'
  #get and post request
    get 'contact', to: 'home#contact'
    post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
