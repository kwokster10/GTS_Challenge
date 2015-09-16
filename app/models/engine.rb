class Engine < ActiveRecord::Base
	has_many :usertoengines
 	has_many :users, through: :usertoengines
	has_many :connections

	default_scope {order(:engineName => :ASC)}
end