class ReserveController < ApplicationController
	def index

	end
	def show
		@show = Show.find(params[:id])
		
	end

private
	  def show_params
	    params.require(:show).permit(:id)
	  end
end
