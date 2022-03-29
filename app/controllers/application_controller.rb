class ApplicationController < ActionController::Base
  def get_quotes
    initialize_stockquote
    @quotes = []
    Stock.all.each do |stock|
      @quotes << StockQuote::Stock.quote(stock.ticker.to_s)
    end
  end

  def get_changes
    get_quotes
    @changes = {}
    @quotes.each do |quote|
      if quote.change_percent.nil?
        percent_change = 0
      else
        percent_change = quote.change_percent * 100.0
      end
      if quote.change.nil?
        dollar_change = 0
      else
        dollar_change = quote.change
      end
      price = latest_or_extended_price(quote)
      @changes[quote.symbol] = {percent: percent_change.round(2), dollar: dollar_change, price: price}
    end
  end

  def get_charts
    initialize_stockquote
    @charts = {}
    Stock.all.each do |stock|
      chart = StockQuote::Stock.chart(stock.ticker.to_s).chart
      history = {}
      chart.each do |day|
        history[day["label"]] = day["close"]
      end
      @charts[stock.ticker.to_s] = history
    end
  end

  def get_portfolio_value
    get_quotes
    portfolio_value = Money.from_cents(0, "USD")
    @quotes.each do |quote|
      price = latest_or_extended_price(quote)
      portfolio_value += Monetize.parse(price)
    end
    @portfolio_value = portfolio_value
  end

  private

  def initialize_stockquote
    StockQuote::Stock.new(api_key: "pk_012b97cae3824b30aa8d4863194544fe")
  end

  def latest_or_extended_price(quote)
    if quote.latest_source == "Close"
      quote.extended_price
    else
      quote.latest_price
    end
  end

  # def get_historical_portfolio_value
  #   get_charts
  #   portfolio_value = Money.from_cents(0, "USD")
  #   @charts.each do |chart|
  #
  #   end
end
