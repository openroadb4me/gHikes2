class User < ActiveRecord::Base
	has_many :hikes, dependent: :destroy
end
