class User < ActiveRecord::Base
	has_many :usertoengines
	has_many :engines, through: :usertoengines

	# has_many :flavors, dependent: :destroy
	# belongs_to :usertoengines

	# default_scope {order(:name => :ASC)}
end