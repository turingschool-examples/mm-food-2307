Rails.application.routes.draw do
  root "welcome#index"

  resources :foods, only: [:index] do
    get "/foods", to: "foods#index"
  end

end
