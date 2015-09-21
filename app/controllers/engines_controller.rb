class EnginesController < ApplicationController

	# showing all engines belonging to user
	def index
		@user = User.find(session[:user_id])
		@engines = @user.engines
	end 

	# edit view of specific Engine
	def edit
		@engine = Engine.find(params[:id])
	end
	
	# updating specific Engine
	def update
		@engine = Engine.find(params[:id])
		@engine.update(engine_params)
		redirect_to root_path
	end

	# sanitizing engine values
	private
	def engine_params
		params.require(:engine).permit(:lastRun)
	end

end