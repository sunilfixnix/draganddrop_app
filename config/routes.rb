Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/countries' => "countries#index"

  get '/countries/:id' => "countries#show"

  post '/countries' => "countries#create"

  get '/countries/countries/new' => "countries#new"

  get '/countries/countries/:id/edit' => "countries#edit"

  patch 'countries/:id' => "countries#update"


end
