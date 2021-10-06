class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit]

  def show
    @days = @shop.days
    # @day = Day.find(params[:day_id])
    # @slots = @day.slots
  end

  def edit
    @days = @shop.days
    # @day = Day.find(params[:day_id])
    # @slots = @day.slots
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
