Rails.application.routes.draw do
  resources :prescriptions

  root to: 'prescriptions#index'
end
