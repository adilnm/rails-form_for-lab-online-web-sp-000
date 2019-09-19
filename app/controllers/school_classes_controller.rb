class SchoolClassesController < ApplicationController

def index
  @school_classes=SchoolClass.all
end

def show
  @school_class=SchoolClass.find(params[:id])
end

def new
  @school_class=SchoolClass.new
end

def create
  @student=Student.new(params.require(:student).permit(:first_name, :last_name))
  @student.save
  redirect_to student_path(@student)
end
end
