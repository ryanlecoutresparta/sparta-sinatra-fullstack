require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/contrib'
require 'pg'
require_relative './models/Person.rb'
require_relative './models/Sport.rb'
require_relative './controllers/static_controller.rb'
require_relative './controllers/person_controller.rb'
require_relative './controllers/sport_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  PersonController,
  SportController
])
