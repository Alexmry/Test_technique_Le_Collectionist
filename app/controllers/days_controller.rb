class DaysController < ApplicationController
  before_action :find_shop, except: :edit

  def update
    @day = Day.find(params[:id])
    @shop = Shop.find(@day.shop_id)
    @day.update(day_params)
    redirect_to shop_path(@shop)
  end

  def edit
    @day = Day.find(params[:id])
    @shop = Shop.find(@day.shop_id)
  end

  private

  def find_shop
    @shop = Shop.find(params[:shop_id])
  end

  def day_params
    params.require(:day).permit(:name, :closed)
  end
end
