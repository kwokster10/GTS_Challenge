class EnginesController < ApplicationController

	# showing all engines
	def index
			@engines = Engine.all
			# @users = User.all
			# binding.pry
	end 

end