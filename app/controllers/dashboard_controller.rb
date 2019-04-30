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
  		session[:load_part] = 10
  		redirect_to dashboard_path
 	end

 #	def create_vsm
# 		vsm=Vsm.new
 #		vsm.file_name = params[:file_name]
#
 #		vsm.inventory1 = params[:inventory1]
 #		vsm.processA = params[:processA]
 #		vsm.resourceA = params[:resourceA]
 #		vsm.dataA1 = params[:dataA1]
 #		vsm.dataA2 = params[:dataA2]

# 		vsm.dataA3 = params[:dataA3]
 #		vsm.inventory2 = params[:inventory2]
 #		vsm.processB = params[:processB]
 #		vsm.resourceB = params[:resourceB]
 #		vsm.dataB1 = params[:dataB1]

 #		vsm.dataB2 = params[:dataB2]
 #		vsm.dataB3 = params[:dataB3]
 #		vsm.inventory3 = params[:inventory3]
 #		vsm.processC = params[:processC]
 #		vsm.resourceC = params[:resourceC]

 #		vsm.dataC1 = params[:dataC1]
 #		vsm.dataC2 = params[:dataC2]
 #		vsm.dataC3 = params[:dataC3]
 #		vsm.inventory4 = params[:inventory4]
 #		vsm.processD = params[:processD]

 #		vsm.resourceD = params[:resourceD]
 #		vsm.dataD1 = params[:dataD1]
 #		vsm.dataD2 = params[:dataD2]
 #		vsm.dataD3 = params[:dataD3]
 #		vsm.PLT1 = params[:PLT1]

 #		vsm.PLT2 = params[:PLT2]
 #		vsm.PLT3 = params[:PLT3]
 #		vsm.PLT4 = params[:PLT4]
 #		vsm.PT1 = params[:PT1]
 #		vsm.PT2 = params[:PT2]
 #		vsm.PT3 = params[:PT3]

 #		vsm.save

 #		respond_to do |format|
 #			redirect_to dashboard_path
 #		end
 #	end
end