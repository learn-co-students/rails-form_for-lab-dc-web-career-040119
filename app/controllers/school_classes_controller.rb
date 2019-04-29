class SchoolClassesController < ApplicationController

  before_action :find_schoolclass, only: [:edit, :update, :show]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(strong_params)
    redirect_to @school_class
  end

  def show
  end

  def edit

  end

  def update
    @school_class.update(strong_params)
    redirect_to @school_class
  end

  def find_schoolclass
    @school_class = SchoolClass.find(params[:id])
  end


  private

  def strong_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
