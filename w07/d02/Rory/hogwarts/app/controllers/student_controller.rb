class StudentController < ActionController

  def new
    @student = Student.new
  end

  def index
  end

  def show
    @student = Student.find(:id)
  end

end