class Seat < ActiveRecord::Base
	belongs_to :show
	has_many :reserve
	belongs_to :theater
end
