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
end
