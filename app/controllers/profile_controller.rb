class ProfileController < ApplicationController
	def index
		@vsm = Vsm.all
	end
end