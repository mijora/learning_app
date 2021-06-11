class Country < ApplicationRecord
  acts_as_paranoid
  
  has_many :addresses
  validates :title, :iso2, presence: true
end
