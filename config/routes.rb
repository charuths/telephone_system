Rails.application.routes.draw do

  get '/phones' => 'phones#list_all'
  post '/phones/:id' => 'phones#create_number'
  post '/phones/' => 'phones#create_number'
end
