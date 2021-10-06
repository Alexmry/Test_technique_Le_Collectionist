class SlotsController < ApplicationController
  before_action :find_shop, only: [:new, :edit]
  before_action :find_day, only: [:new, :edit]

  def new
    @slot = Slot.new
    # mettre ca dans le edit de shop show pour une meilleur UX
  end

  def create
    @slot = Slot.new(slot_params)
    @day = Day.find(params[:day_id])
    @slot.day = @day
    @slot.save
    redirect_to shop_path(@day.shop.id)
    # mettre ca dans le edit de shop show pour une meilleur UX
  end

  def update
    @shop = Shop.find(params[:shop_id])
    @day = Day.find(params[:day_id])
    @slots = Slot.all
    @day = Day.find(@slot.day_id)
    @slot.update(slot_params)
    redirect_to shop_path(@shop)
  end

  def edit
    @slot = Slot.find(params[:id])
    @day = Day.find(@slot.day_id)
    @day = @slot.day
  end


  # def update
  #   @shop = Shop.find(params[:shop_id])
  #   @day = Day.find(params[:id])
  #   @shop = Shop.find(@day.shop_id)
  #   @day.update(day_params)
  #   redirect_to shop_path(@shop)
  # end

  # def edit
  #   @day = Day.find(params[:id])
  #   @shop = Shop.find(@day.shop_id)
  #   # @slot = Slot.find(@day.slots.ids)
  # end


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
