EmberCRM::Application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :leads
    end
  end

  get 'ui(/:action)', controller: 'ui'
  get '*path', to: 'home#index'
end
