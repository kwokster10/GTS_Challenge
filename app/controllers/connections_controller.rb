require "ipaddr"

class ConnectionsController < ApplicationController

	# showing all connections
	def index
		@engine = Engine.find(params[:engine_id])
		@connections = Connection.where({engineName: @engine.engineName})
		@ips = []
		@connections.each do |connection| 
			@ips << IPAddr.new(connection.ip, Socket::AF_INET)
		end
	end 
end