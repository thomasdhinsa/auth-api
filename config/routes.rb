Rails.application.routes.draw do


post "/users" => "users#create"
get "/users" => "users#show"

post "/sessions" => "sessions#create"






end
