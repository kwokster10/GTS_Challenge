class ConnectionsController < ApplicationController

	# showing all connections
	def index
		@engine = Engine.find(params[:engine_id])
		@connections = Connection.where({engineName: @engine.engineName})
	end 
end