Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'transfer_agent/create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'order/create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'client/create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'account/create'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'bank/create'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :transfers do
        get 'amount_transfer_confirmation'
        get 'history_of_bank'
      end
    end
  end  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
