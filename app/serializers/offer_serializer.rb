class OfferSerializer < ApplicationSerializer
  attributes :full_price, :price_with_discount, :discount_percentage, :start_date, :enrollment_semester, :enabled
  has_one :course
  has_one :university
  has_one :camp, :key => "campus"
end
