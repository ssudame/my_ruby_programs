# My_cmd_app.rb
class MyCmdApp
	
	def  initialize(args)
		@input = args
	end
	
	
	def call (env)
		[200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{@input}"]]
	end
end



