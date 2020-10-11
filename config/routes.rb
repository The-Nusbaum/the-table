Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#omniauth'
  get '/auth/failure' => redirect('/')
  namespace :api do
    namespace :v1 do
      resources :attrs
      resources :users
      resources :players
      resources :bonuses
      resources :characters
      resources :races
      resources :campaigns
    end
  end

    mount ActionCable.server => '/cable'
end