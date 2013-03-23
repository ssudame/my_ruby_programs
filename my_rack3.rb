# my_rack3.rb
require 'rack'
def my_method (env)
	puts [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV}"]]
end
Rack::Handler::WEBrick.run method(:my_method)
