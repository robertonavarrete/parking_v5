Rails.application.routes.draw do
  get 'schedules/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tickets
  resources :cars
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }


  get 'billings/pre_pay', to:'billings#pre_pay', as: 'pre_pay_billings'
  get 'billings/execute', to:'billings#execute', as:'execute_billings'

  root 'tickets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
