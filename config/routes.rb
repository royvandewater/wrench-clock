WrenchClock::Application.routes.draw do
  root :to => 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :service_records
      resources :vehicles do
        resources :service_records
      end
    end
  end
end
