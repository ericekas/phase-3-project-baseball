require_relative "./config/environment"
# require 'sinatra'


# class Team_schedule < Sinatra::Base
#   get '/' do
#     "Welcome!"
#   end
#   get '/teams' do 
#     Team.all
#   end
# end
#   def call(env)
#     [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
#   end
# end

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController

# run App.new
# run Team_schedule