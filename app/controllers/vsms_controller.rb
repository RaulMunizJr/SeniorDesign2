class VsmsController < ApplicationController
	def index
		session[:load_part] = 2
  		redirect_to dashboard_path
	end

	def show
		@vsm = Vsm.find(params[:id])
	end

	def new
		@vsm = Vsm.new
	end

	def create
		@vsm = Vsm.new(vsm_params)
		@vsm.user = User.find(1)

		if @vsm.save
			flash[:notice] = "Your VSM has been saved to your profile!"
			redirect_to dashboard_path
		else
			render:new
		end
	end

	def edit
		@vsm = Vsm.find(params[:id])
	end

	def update
		@vsm = Vsm.find(params[:id])
		if @vsm.update(vsm_params)
			flash[:notice] = "Your VSM has been updated successfully!"
			redirect_to vsm_path(@vsm)
		else
			render :edit
		end
	end

	private 

		def vsm_params
			params.require(:vsm).permit(:file_name, :inventory1, :processA, :resourceA, :dataA1, :dataA2, :dataA3,
										:inventory2, :processB, :resourceB, :dataB1, :dataB2, :dataB3,
										:inventory3, :processC, :resourceC, :dataC1, :dataC2, :dataC3,
										:inventory4, :processD, :resourceD, :dataD1, :dataD2, :dataD3,
										:PLT1, :PLT2, :PLT3, :PLT4, :PT1, :PT2, :PT3)
		end


end