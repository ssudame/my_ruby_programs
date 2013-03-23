# simple_rack_proc.rb
my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV}"]] }
puts my_rack_proc.call({})



