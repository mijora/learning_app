class CountriesController < ApplicationController
  before_action :find_country
  before_action :authenticate_user!

  def index
    @q = Country.ransack(params[:q])
    @countries = @q.result(distinct: true)
  end

  def new
    @country = Country.new
  end

  def show
  end

  def edit
  end

  def update
    if @country.update country_params
      redirect_to countries_path
    else
      render :edit
    end
  end

  def create
    @country = Country.new country_params
    if @country.save
      redirect_to countries_path
    else
      render :new
    end
  end

  def destroy
    @country.destroy
    redirect_to countries_path
  end

  private

  def find_country
    @country = Country.find(params[:id]) if params[:id]
  end

  def country_params
    params.require(:country).permit :title, :iso2
  end
end
