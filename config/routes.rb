Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :index

  get '/auth/:provider/callback' => 'sessions#omniauth'
  get '/auth/failure' => redirect('/')
  get '/' => 'index#index'

  Rails.application.routes.draw do
  scope '/api/v1' do
    resources :players
  end
end
end
