Rails.application.routes.draw do
  root "welcome#index"

  resources :foods, only: [:show]
end
