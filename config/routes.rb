Rails.application.routes.draw do
  resource :prescription

  root to: 'prescriptions#index'
end
