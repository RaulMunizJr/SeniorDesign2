class ProfileController < ApplicationController
	def index
		@vsm = Vsm.all
		@sipoc = Sipoc.all
	end
end