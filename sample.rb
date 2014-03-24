
require 'cassandra'

puts "creating new keyspace.."
client = Cassandra.new('shippableDemo', '127.0.0.1:9160')

puts "inserting data.."
client.insert("users", 'userone', {
    'full_name' => 'User One',
    'email' => 'uone@example.com'
})

client.insert("users", 'usertwo', {
    'full_name' => 'User Two',
    'email' => 'utwo@example.com'
})

puts "output data from the program.."
client.each_key("users") do |user|
   puts "key : " + user
end



