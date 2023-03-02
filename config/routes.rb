Rails.application.routes.draw do
  devise_for :users
  get 'ui_kit', to: 'pages#ui_kit'
  root to: "pages#home"
  resources :listings do
    resources :bookings, except: [:index, :show, :edit, :update, :destroy]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do

  end

end
