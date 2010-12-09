require 'rainbows'
require 'eventmachine'
require 'sinatra/async'
require 'em-http-request'

require 'open-uri'

class AsyncTest < Sinatra::Base
  register Sinatra::Async

  enable :show_exceptions

  get '/test_sync' do
    "prova"
  end

  aget '/test_async' do 
    body { ["prova async"] }
  end

end

run AsyncTest.new
