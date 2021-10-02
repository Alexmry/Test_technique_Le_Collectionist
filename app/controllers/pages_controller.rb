class PagesController < ApplicationController
  def home
    @shops = Shop.all
  end
end
