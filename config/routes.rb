WrenchClock::Application.routes.draw do
  root :to => 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :vehicles
    end
  end
end
