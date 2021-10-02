class DaysController < ApplicationController
  before_action :find_shop, except: :edit

  def update
  end

  def edit
    @day = Day.find(params[:id])
    @shop = Shop.find(@day.shop_id)
  end

  private

  def find_shop
    @shop = Shop.find(params[:shop_id])
  end

end
