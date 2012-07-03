Wikilicious::Application.routes.draw do
  devise_for :users do
    post "/users/sign_up" => "devise/registrations#create", :as => :sign_up
    post "/users/sign_in" => "devise/sessions#create", :as => :sign_in
    post "/users/password/new" => "devise/passwords#create", :as => :new_password
    put "/users/password/edit" => "devise/passwords#update", :as => :edit_password
  end

  root :to => "high_voltage/pages#show", :id => "index"
end