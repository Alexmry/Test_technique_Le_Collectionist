class ShopsController < ApplicationController
  before_action :set_shop, only: :show

  def show
    @jours = Jour.all
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
