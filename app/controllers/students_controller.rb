class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def create
     Student.create(first_name: params[:name][:title], description: params[:post][:description])
  redirect_to students_path
  end

end
