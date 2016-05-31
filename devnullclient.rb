#!/usr/bin/env ruby

require 'net/http'

uri = URI('http://192.168.1.5:4567/message')

req = Net::HTTP::Post.new(uri)
#req.body = multipart_data
req.content_type = 'application/xml'
#xml = File.open("/home/pdlubisz/git/devnullserver/file.xml", "r")
#puts req.body
#puts req

res = Net::HTTP.start(uri.hostname, uri.port) {|http|
  http.request(req)
}

puts res.body
