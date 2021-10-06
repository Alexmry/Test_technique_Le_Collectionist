class DaysController < ApplicationController

  def update
    @shop = Shop.find(params[:shop_id])
    @day = Day.find(params[:id])
    @shop = Shop.find(@day.shop_id)
    @day.update(day_params)
    redirect_to shop_path(@shop)
  end

  def edit
    @day = Day.find(params[:id])
    @shop = Shop.find(@day.shop_id)
    # @slot = Slot.find(@day.slots.ids)
  end

  private

  def day_params
    params.require(:day).permit(:name, :closed)
  end
end
