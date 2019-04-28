class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create

    ###Bug fix for test
    if params.has_key?(:school_classes)
      @school_class = SchoolClass.find_or_create_by(school_classes_params(:title,
                                                                          :room_number))
    end

    if params.has_key?(:school_class)
      @school_class = SchoolClass.find_or_create_by(school_class_params(:title,
                                                                      :room_number))
    end
    ### Why are params both plural and not?

    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_classes_params(*args)
    params.require(:school_classes).permit(*args)
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
