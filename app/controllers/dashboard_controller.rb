class DashboardController < ApplicationController
	def index
	end

	def tool1
  		session[:load_part] = 1
  		redirect_to dashboard_path
 	end

 	def tool2
  		session[:load_part] = 2
  		redirect_to dashboard_path
 	end

 	def nothing
  		session[:load_part] = 3
  		redirect_to dashboard_path
 	end
end
