class SlotsController < ApplicationController
  before_action :find_shop
  before_action :find_day

  def new
    @slot = Slot.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def find_day
    @day = Day.find(params[:day_id])
  end

  def find_shop
    @shop = Shop.find(params[:shop_id])
  end
end
