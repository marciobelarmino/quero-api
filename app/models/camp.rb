class Camp < ApplicationRecord
  has_many :offers
  belongs_to :university
end
