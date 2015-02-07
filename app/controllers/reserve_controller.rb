class ReserveController < ApplicationController
	def index

	end
	def show
		@seatss = Seat.all
		@seats = Show.find(params[:id])
		@id = @seats.id
	end
private
	  def seat_params
	    params.require(:show).permit(:id)
	  end
end
