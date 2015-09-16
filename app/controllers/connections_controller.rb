class ConnectionsController < ApplicationController

	# showing all connections
	def index
			@connections = Connection.all
	end 

end