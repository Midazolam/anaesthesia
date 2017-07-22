class SearchesController < ApplicationController
	def new
		@search = Search.new
		@hospital = Patient.uniq.pluck(:hospital)
	end

	def create
		@search = Search.create(search_params)
		@redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private
	def search_params
		params.require(:search).permit(:firstName, :surName, :dob, :hospital, :opDate, :asa)
	end
end
