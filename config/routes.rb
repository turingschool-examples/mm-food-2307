Rails.application.routes.draw do
  root "welcome#index"
  get '/food', to: "food#index", as: 'foods'
end
