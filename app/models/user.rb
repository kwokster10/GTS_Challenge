class User < ActiveRecord::Base
	has_many :usertoengines, foreign_key: "idusers", primary_key: "idusers"
	has_many :engines, :through => :usertoengines

	default_scope {order(:username => :ASC)}
end