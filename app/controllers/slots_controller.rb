class SlotsController < ApplicationController
  before_action :find_shop
  before_action :find_day

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)

    @slot.day = @day
    @slot.save
    redirect_to shop_path(@shop)
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

  def slot_params
    params.require(:slot).permit(:start_at, :end_at, :day_id)
  end
end
