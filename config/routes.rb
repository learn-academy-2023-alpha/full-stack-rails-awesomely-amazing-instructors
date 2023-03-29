Rails.application.routes.draw do
  # HTTP verb, url(location), hashrocket, controller, method
  get '/books' => 'book#index'
end
