class Address < ApplicationRecord
  belongs_to :country, required: false

  def full_address
    [street, post_code, country&.title].reject(&:blank?).join(', ')
  end
end
