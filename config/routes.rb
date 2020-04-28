Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new show create]
  resource :sessions, only: %i[new create destroy]
  resources :events
  post "user/add-event",to: "tickets#create", as: "user_add_event"
  delete "event/unregister", to: "tickets#destroy", as: "destroy_event"
  root "events#index"
end
