class V1::EmployeesController < ApplicationController

	def index
		@employees = Employee.all
	end

	def create #this is an employee object (this is after the form has been created)
		@employee = Employee.create(
			first_name: params[:first_name],
			last_name: params[:last_name],
			ssn: params[:ssn],
			email: params[:eamil]
			)
		render "show.json.jbuilder"
	end

	def show
		@employee = Employee.find(params[:id])
	end
end
