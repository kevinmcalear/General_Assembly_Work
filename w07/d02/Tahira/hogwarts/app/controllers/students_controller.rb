class StudentsController < ApplicationController

  def index
    @students = Students.all
  end

  def show
    @student = Student.find(:id)
  end

  def create
  end

end