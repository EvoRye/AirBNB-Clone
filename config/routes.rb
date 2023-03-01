Rails.application.routes.draw do
  root to: "pages#home"
  resources :listings do
    resources :bookings, except: [:index, :show, :edit, :update, :destroy]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
end
