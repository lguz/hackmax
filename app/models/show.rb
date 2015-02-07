class Show < ActiveRecord::Base

	belongs_to :movie
	belongs_to :theater
	belongs_to :seat
	belongs_to :reserve
end
