Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'home#dashboard', as: :authenticated_root
  end

  unauthenticated do
    root to: 'home#index'
  end

  api_version module: 'api/v1', path: { value: 'api/v1' } do
    resources :charges
  end
end
