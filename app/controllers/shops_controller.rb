class ShopsController < ApplicationController
  before_action :set_shop, only: :show

  def show
    @days = @shop.days
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
