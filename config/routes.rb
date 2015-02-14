Rails.application.routes.draw do
  resources :prescriptions, except: :destroy

  get 'api/v1/prescriptions/:language/:id'         => 'api/v1/prescriptions#show'
  get 'api/v1/prescriptions/:language/:id'         => 'api/v1/prescriptions#read',    as: :prescription_read, constraints: { format: :mp3}

  root to: 'prescriptions#index'
end
