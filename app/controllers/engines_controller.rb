class EnginesController < ApplicationController

	# showing all engines
	def index
			@engines = Engine.all
			binding.pry
	end 

end