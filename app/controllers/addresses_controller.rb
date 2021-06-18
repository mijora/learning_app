class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
    @address.build_country
  end

  def create
    @address = Address.new
    if @address.save
      redirect_to address_address_creation_path(@address.id, :select_country)
    else
      render 'new'
    end
  end

  private

  def address_params
    params.require(:address).permit :name, :email, :phone, :post_code, :street, :country_id,
      country_attributes: [:title, :iso2]
  end
end
