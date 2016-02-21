class TestsController < ApplicationController
	def index
		@tests = @current_user.tests
	end

	def new
		@test = @current_user.tests.new
	end
end
