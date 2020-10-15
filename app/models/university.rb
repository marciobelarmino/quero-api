class University < ApplicationRecord
  has_many :offers
  has_many :camps
end
