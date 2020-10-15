class Offer < ApplicationRecord
  belongs_to :course
  belongs_to :university
  belongs_to :camp

  scope :filter_by_university, -> (university_name) { joins(:university).where("name like ?", "#{university_name}%") }
  scope :filter_by_course, -> (course_name) { joins(:course).where("name like ?", "%#{course_name}%")}
  scope :filter_by_kind, -> (kind) { joins(:course).where("kind like ?", "#{kind}%") }
  scope :filter_by_level, -> (level) {  joins(:course).where("level like ?", "#{level}%") }
  scope :filter_by_shift, -> (shift) {  joins(:course).where("shift like ?", "#{shift}%") }
  scope :filter_by_city, -> (city) { joins(:camp).where("city like ?", "%#{city}%") }
  scope :sort_by_price_with_discount, -> (price_with_discount_order) { order("price_with_discount #{price_with_discount_order}") }

end
