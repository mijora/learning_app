class MainMailer < ApplicationMailer
  def after_order_email(address_id)
    @address = Address.find(address_id)
    mail(to: 'ignas@mijora', subject: 'Naujas adresas')
  end
end
