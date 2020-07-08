Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/hello/eat', to: 'hello#actionEat'
  get '/hello/request_headers', to: 'hello#request_headers'
  get '/hello/request_body', to: 'hello#request_body'
  get '/hello/response_headers', to: 'hello#response_headers'
  get '/hello/response_body', to: 'hello#show_response_body'
end
#http://localhost:3000/hello/eat
#http://localhost:3000/hello/request_headers
#http://localhost:3000/hello/request_body
#http://localhost:3000/hello/response_headers
#http://localhost:3000/hello/response_body