class Connection < ActiveRecord::Base
	belongs_to :engine

	default_scope {order(:idconnections => :ASC)}
end