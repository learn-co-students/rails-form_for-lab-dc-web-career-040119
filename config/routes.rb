Rails.application.routes.draw do
  resources :students

  resources :school_classes

  # get '/school_class/:id', to: 'school_class#show', as: 'school_class'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
