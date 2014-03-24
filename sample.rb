puts "starting.."
#require 'jruby'
#require 'thrift/struct_union'
#require 'thrift'
#require 'rubygems'
#require 'thrift_client'
require 'cassandra'
#include SimpleUUID

puts "gems loaded.."

client = Cassandra.new('shippableDemo', '127.0.0.1:9160')

client.insert("users", 'userone', {
    'full_name' => 'User One',
    'email' => 'uone@example.com'
})

client.insert("users", 'usertwo', {
    'full_name' => 'User Two',
    'email' => 'utwo@example.com'
})

puts "retrieving data.."

client.each_key("users") do |user|
   puts user
end


