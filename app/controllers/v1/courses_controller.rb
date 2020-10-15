class V1::CoursesController < ApplicationController
  def index
    @courses = Course.where(nil)
    @courses = @courses.filter_by_kind(params[:kind]) if params[:kind].present?
    @courses = @courses.filter_by_level(params[:level]) if params[:level].present?
    @courses = @courses.filter_by_shift(params[:shift]) if params[:shift].present?
    render json: @courses, each_serializer: CourseSerializer, status: :ok
  end
end
