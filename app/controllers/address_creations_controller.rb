class AddressCreationsController < ApplicationController
  include Wicked::Wizard

  steps :select_country, :fill_address_details

  def create
    @address = Address.create
    sessions[:country_id] = @address.id
    redirect_to wizzard_path
  end

  def update
    @address = Address.find(params[:address_id])
    @address.update address_params
    render_wizard @address
  end

  def show
    @address = Address.find(params[:address_id])
    render_wizard
  end

  private

  def address_params
    params.require(:address).permit!
  end
end
