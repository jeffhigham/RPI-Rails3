class ReportsController < ApplicationController
  layout 'survey'
	def index
		@report = Report.new
	end
end
