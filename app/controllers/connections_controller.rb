require "ipaddr"

class ConnectionsController < ApplicationController

	# showing all connections
	def index
		# finding engine from params
		@engine = Engine.find(params[:engine_id])

		# fetching all connections related to engine
		@connections = Connection.where({engineName: @engine.engineName})

		# converting ip addresses from integer to IPv4
		@ips = []
		@connections.each do |connection| 
			@ips << IPAddr.new(connection.ip, Socket::AF_INET)
		end
	end

	# editing specific Engine
	def edit
		@connection = Connection.find(params[:id])
		@ip = IPAddr.new(@connection.ip, Socket::AF_INET)
	end

	# updating specific Engine
	def update 
		@connection = Connection.find(params[:id])
		# binding.pry
		@connection.update(connection_params)
		redirect_to engine_connections_path
	end

	# sanitizing connection values
	private
	def connection_params
		params.require(:connection).permit(:engineName, :exchange, :ip, :port)
	end

end


