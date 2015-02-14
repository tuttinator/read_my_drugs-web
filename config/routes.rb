Rails.application.routes.draw do
  resources :prescriptions, except: :destroy

  get 'api/v1/prescriptions/:language/:id'         => 'api/v1/prescriptions#show', as: :api_prescription

  root to: 'prescriptions#index'
end
