class V1::CoursesController < ApplicationController
  def index
    render json: {}, status: :ok
  end
end
