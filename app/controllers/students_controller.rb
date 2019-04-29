class StudentsController < ApplicationController

  before_action :find_student, only: [:edit, :update, :show]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  def create
    @student = Student.create(strong_params)
    redirect_to @student
  end

  def edit
  end

  def update
    @student.update(strong_params)
    redirect_to @student
  end

  def find_student
    @student = Student.find(params[:id])
  end


  private

  def strong_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
