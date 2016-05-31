#!/usr/bin/env ruby

require 'sinatra'

set :environment, :production

get '/' do
  "Everything you send goes to /dev/null"
end

post '/message' do
  # http://recipes.sinatrarb.com/p/middleware/rack_parser?#article
  request.body
  #request.method
# request.body.rewind  # in case someone already read it
 # data = JSON.parse request.body.read
  #"Hello #{data['name']}!"
#end
  "koniec" 
end
