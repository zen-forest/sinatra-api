require 'sinatra'
require 'json'

get '/' do
  "My first web api"
end

users = {
  'thibault': { first_name: 'Thibault', last_name: 'Denizet', age: 25 },
  'simon':    { first_name: 'Simon', last_name: 'Random', age: 26 },
  'john':     { first_name: 'John', last_name: 'Smith', age: 28 }
}

# users = {
#   'johndoe' : { first_name: 'John', last_name: 'Doe', age: 24 },
#   'simon' :   { first_name: 'Simon', last_name: 'Murph', age: 32 },
#   'john' :    { first_name: 'john', last_name: 'Random', age: 28 }
# }

get '/users' do
  users.map { |name, data| data.merge(id: name) }.to_json
end