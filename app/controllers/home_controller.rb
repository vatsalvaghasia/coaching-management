class HomeController < ApplicationController
  def index
  end
  def about
  end
  def contact
  end
  def courses
  end
  def course_details
    @courses = Course.all
  end
  def questionpapers
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @papers = Paper.where(category: @category)
    else
    @papers = Paper.all
  end
    @category = Category.all
  end
end
