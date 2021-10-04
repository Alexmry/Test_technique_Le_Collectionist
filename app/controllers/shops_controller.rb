class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit]

  def show
    @days = @shop.days
  end

  def edit
    @days = @shop.days
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
