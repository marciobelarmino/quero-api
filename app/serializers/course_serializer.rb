class CourseSerializer < ApplicationSerializer
  attributes :name, :kind, :level, :shift
  has_one :university
  has_one :camp, :key => "campus"
end
