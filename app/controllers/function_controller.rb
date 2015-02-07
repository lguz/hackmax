class FunctionController < ApplicationController
	def new
		@show = Show.new
	end
	def create
		
		@show = Show.new
		show_param = params[:show]
		
		@show.date_show = show_param['date_show']
		@show.time_show = show_param['time_show']
		@show.movie_id = show_param['movie_id']
		@show.theater_id = show_param['theater_id']

		if @show.save
			@test = @show.id
		  	redirect_to admin_function_path
		else
		  render 'new'
		end
		 @theater_id = Theater.find(@show.theater_id) 
         @theater_cantida = @theater_id.quantity
         i = 0
         cantidad = @theater_cantida
         @status = "D"
	        while i < cantidad do
				@seat = Seat.new
				@seat.status = @status
				@seat.show_id = @test
		        @seat.save
		        i +=1
	         end

	end
	def show
	    @shows = Show.find(params[:id])
		 
	end

	def edit
		@show = Show.find(params[:id])
	end



	def update
	  @show = Show.find(params[:id])
	 
	  @show.update(show_params)
	  redirect_to admin_function_path
	end
	
	def destroy
	  @show = Show.find(params[:id])
	  @show.destroy
	
	  redirect_to admin_function_path
	end

	private
	  def function_params
	    params.require(:show).permit(:date_show, :time_show, :movie_id, :theater_id)
	  end
	  def seat_params
	    params.require(:seat).permit(:status, :show_id)
	  end
end
