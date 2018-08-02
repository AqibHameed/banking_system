Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :transfer_agents
      resources :orders
      resources :clients
      resources :accounts
      resources :banks
      resources :transfers do
        get 'amount_transfer_confirmation'
        get 'history_of_bank'
      end
    end
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
