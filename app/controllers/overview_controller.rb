class OverviewController < ApplicationController
  def index
    # get_charts
    get_changes
    get_portfolio_value
    get_logos
  end

  # def ticker
  #   get_changes
  #   @changes.each do |stock|
  #     @stock = stock
  #     render partial: "ticker"
  #   end
  # end
end
