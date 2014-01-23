# register a tenant user

require 'author'

desc 'Registers a test tenant user'
task :seed_tenant do |t|
  client = Author::Client.new(ENV['API_HOST'])
  auth = Author::Proxy.new(client)
  auth.register_and_login('tenant@user.com', '12345678')
  puts "session token: #{auth.session}"
end