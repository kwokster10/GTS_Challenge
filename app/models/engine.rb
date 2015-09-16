class Engine < ActiveRecord::Base
	has_many :usertoengines, foreign_key: "engineName", primary_key: "engineName"
 	has_many :users, :through => :usertoengines
	has_many :connections, foreign_key: "engineName", primary_key: "engineName"

	default_scope {order(:engineName => :ASC)}
end