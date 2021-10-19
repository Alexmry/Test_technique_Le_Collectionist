class SlotsController < ApplicationController
  before_action :find_shop, only: [:new, :edit]
  before_action :find_day, only: [:new, :edit]

  def index
    @shop = Shop.find(params[:shop_id])
    @day = Day.find(params[:day_id])
    @slots = @day.slots
  end

  def new
    @slot = Slot.new
    # mettre ca dans le edit de shop show pour une meilleur UX
  end

  def create
    @slot = Slot.new(slot_params)
    @day = Day.find(params[:day_id])
    @slot.day = @day
    @slot.save
    redirect_to edit_shop_path(@day.shop.id)
    # mettre ca dans le edit de shop show pour une meilleur UX
  end

  def update
    puts "$$$$$$$$$$$$$$$$$$$$$$$"
    puts params
    # @shop = Shop.find(params[:shop_id])
    # @day = Day.find(params[:day_id])
    # @slot.update(slot_params)
    # redirect_to shop_path(@shop)
  end

  def edit
    @day = Day.find(params[:day_id])
    @shop = @day.shop
    # @slots = @day.slots
    @slot = Slot.find(params[:id])

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
    @shop = Shop.find(params[:shop_id])
    @day = Day.find(params[:day_id])
    @slot = Slot.find(params[:id])
    @slot.destroy
    # redirect_to shop_path(@day.shop.id)
    # redirect_to shop_path(@shop)
    # redirect_to root_path
    redirect_to shop_day_slots_path(@shop,@day)
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
