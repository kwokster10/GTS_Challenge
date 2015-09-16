class Usertoengine < ActiveRecord::Base
	belongs_to :engine
	belongs_to :user

	# default_scope {order(:idconnections => :ASC)}
end