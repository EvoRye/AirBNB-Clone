Rails.application.routes.draw do
  get 'ui_kit', to: 'pages#ui_kit'
  devise_for :users
  root to: "pages#home"

  resources :listings

end
