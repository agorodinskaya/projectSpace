Rails.application.routes.draw do

  get 'space_station/new'
  get 'space_station/index'
  get 'space_station/show'
  get 'space_station/create'
  get 'space_station/destroy'
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

resources :questions do
member do
put "like", to: "questions#upvote"
put "dislike", to: "questions#downvote"
end
end

resources :replies

resources :demostrations
end
