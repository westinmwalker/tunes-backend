Rails.application.routes.draw do
  get "tunes/" => "tunes#index"
  get "tunes/:id" => "tunes#show"
  post "/tunes" => "tunes#create"
  patch "/tunes/:id" => "tunes#update"
  delete "/tunes/:id" => "tunes#destroy"
end
