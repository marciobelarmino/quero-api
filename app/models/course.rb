class Course < ApplicationRecord
  has_many :offers
  belongs_to :university
  belongs_to :camp

  scope :filter_by_university, -> (university_name) { joins(:university).where("name like ?", "#{university_name}%") }
  scope :filter_by_kind, -> (kind) { where("kind like ?", "#{kind}%") }
  scope :filter_by_level, -> (level) {  where("level like ?", "#{level}%") }
  scope :filter_by_shift, -> (shift) {  where("shift like ?", "#{shift}%") }
end
