Rails.application.routes.draw do
  

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :trips, only: [:index]
    end
  end

  
  
end
