Rails.application.routes.draw do
  root "base#home"
  resources 'base'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events

end
