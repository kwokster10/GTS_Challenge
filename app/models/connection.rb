class Connection < ActiveRecord::Base
	belongs_to :engine, foreign_key: "engineName", primary_key: "engineName"

	default_scope {order(:idconnections => :ASC)}
end