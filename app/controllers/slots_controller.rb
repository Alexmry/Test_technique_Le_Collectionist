class SlotsController < ApplicationController
  before_action :find_shop, only: :new
  before_action :find_day, only: :new

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @day = Day.find(params[:day_id])
    @slot.day = @day
    @slot.save
    redirect_to shop_path(@day.shop.id)
  end

  def edit
  end

  def update
  end

  def destroy
    @slot = Slot.find(params[:id])
    @slot.destroy
    redirect_to shop_path(@day.shop.id)
  end


  private

  def find_day
    @day = Day.find(params[:day_id])
  end

  def find_shop
    @shop = Shop.find(params[:shop_id])
  end

  def slot_params
    params.require(:slot).permit(:start_at, :end_at, :day_id)
  end
end
