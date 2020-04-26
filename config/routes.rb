Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users, only: %i[new show create]
  resource :sessions, only: %i[new create destroy]
  root "users#show"
end
