Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :bookings
  resources :listings do
    # resources :bookings
  end
  get 'ui_kit', to: 'pages#ui_kit'
end
