class Theater < ActiveRecord::Base
	has_many :shows
	has_many :seat
end
