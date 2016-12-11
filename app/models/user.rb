class User < ApplicationRecord::Base
	has_many: :orders
end
