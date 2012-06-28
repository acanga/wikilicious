Wikilicious::Application.routes.draw do
  devise_for :users do
    post "/users/sign_up" => "devise/registrations#create", :as => :sign_up
    post "/users/sign_in" => "devise/sessions#create", :as => :sign_in
  end

  root :to => "high_voltage/pages#show", :id => "index"
end