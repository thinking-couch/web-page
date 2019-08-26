Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'
  resources :statistics, path: '/admin/statistics', controller: 'admin/statistics'
  resources :page_settings, path: '/admin/page_settings', controller: 'admin/page_settings'
  namespace :admin do
    resource :dashboards
    root to: 'dashboard#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
