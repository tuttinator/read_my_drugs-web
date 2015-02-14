Rails.application.routes.draw do
  resources :prescriptions, except: :destroy

  get 'api/v1/prescriptions/:id'         => 'api/v1/prescriptions#show'
  get 'api/v1/prescriptions/:id/enlarge' => 'api/v1/prescriptions#enlarge', as: :prescription_enlarge
  get 'api/v1/prescriptions/:id/read'    => 'api/v1/prescriptions#read',    as: :prescription_read

  root to: 'prescriptions#index'
end
