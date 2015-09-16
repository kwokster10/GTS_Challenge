class EnginesController < ApplicationController

	# showing all engines
	def index
			@engines = Engine.all
			print @engines
			# binding.pry
	end 

end