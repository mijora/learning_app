class Country < ApplicationRecord
  acts_as_paranoid
  
  has_many :addresses
  validates :title, :iso2, presence: true

  def self.for_select
    order(:title).map { |country| [country.title, country.id] }
  end
end
