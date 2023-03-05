require 'rack/cors'
require 'sinatra'
require_relative "./config/environment.rb"
run ApplicationController

use Rack::Cors do

    allow do
        origins '*'
        resource '/*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options]  
    end
end


run Application.new