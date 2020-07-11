Rails.application.routes.draw do

  get '/phones' => 'phones#list_all'
  post '/phones/:id' => 'phones#fancy_number'
  post '/phones/' => 'phones#random_numbers'
end
