class Reserve < ActiveRecord::Base
	has_many :seat
	has_many :show
end
