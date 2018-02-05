class DepartmentsController < ApplicationController
	before_action :authenticate_user!, only: [:new,  :create]
  load_and_authorize_resource except:[:index]
  def index
  	@departments = Department.all
  end

  def new
  	@department = Department.new 
  end

  def edit
  	@department = Department.find[:id]
  end

  def create
    @department = Department.new(department_params)
    @department.save
    UserMailer.welcome_email(current_user,@department).deliver_now
    redirect_to departments_path
  end

  def update
  	@department = Department.find(params[:id])
  	@department.update_attributes(department_params)
  	redirect_to departments_path
  end

  def department_params
  	params.require(:department).permit(:name, :block)
  end
end
