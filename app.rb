require 'sinatra'
require 'ddtrace'
require 'ddtrace/contrib/sinatra/tracer'

set :bind, '0.0.0.0'

Datadog.configure do |c|
  c.use :sinatra, { analytics_enabled: true }
end

get '/' do
  'Hello world!'
end
