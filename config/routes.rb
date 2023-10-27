Rails.application.routes.draw do
  root "welcome#index"

  resources :foods do
    collection do
      get 'search'
    end
  end
end
