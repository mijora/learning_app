class Address < ApplicationRecord
  belongs_to :country, required: false

  after_create :send_email

  def full_address
    [street, post_code, country&.title].reject(&:blank?).join(', ')
  end

  def send_email
    MainMailer.after_order_email(id).deliver_later
  end
end
