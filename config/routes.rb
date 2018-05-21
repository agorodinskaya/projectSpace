Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "pages#home"

get "/login" => "session#new"
post "/login" => "session#create"
delete "/login" => "session#destroy"

resources :users

get "/profile" => "users#profile"


resources :regions

resources :planets

resources :moons


end
