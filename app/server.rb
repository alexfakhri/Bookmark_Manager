require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require './app/models/link'
require './app/models/tag'
require './app/models/user'
require_relative 'helpers/application'
require_relative 'data_mapper_setup'
require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative 'controllers/links'
require_relative 'controllers/tags'
require_relative 'controllers/application'

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash

set :partial_template_engine, :erb

set :public_dir, Proc.new {File.join(root, '..', "public")}










