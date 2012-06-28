Wikilicious::Application.routes.draw do
  devise_for :users
  post "/users/sign_up" => "devise/registrations#new"
  post "/users/sign_in" => "devise/sessions#new"

  root :to => "high_voltage/pages#show", :id => "index"
end