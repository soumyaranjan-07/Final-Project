class HomeController < ApplicationController
  def index
    @courses_all=Course.all
  end

  def search
    if request.post?
      keyword = '%' + params[:keyword] + '%'
      @courses_all = Course.find_by_sql ["Select * from courses WHERE name like ? or description like ?",keyword,keyword]
    end
  end
end
