require 'nokogiri'
require 'open-uri'
 count = 0
doc = Nokogiri::HTML(open("http://ruby-metaprogramming.rubylearning.com/html/ruby_metaprogramming_1.html"))
doc.traverse{ |x|
    if x.text? 
    	count += x.text.scan(/\bthe\b/i).size
    end
}
puts "The number of 'the' words is: #{count}"
