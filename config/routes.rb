Rails.application.routes.draw do
  resources :price_alert_alarms
  resources :price_alerts
  resources :alerts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
