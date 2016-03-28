def stock_picker(stock_prices)
    best_price_difference = 0
    best_date_difference = 0
    buy_date = 0
    sell_date = 0
    (0...stock_prices.length).each do |x|
        ((x+1)...stock_prices.length).each do |y|
            price_difference = stock_prices[y] - stock_prices[x]
            date_difference = y - x
            if price_difference > best_price_difference
                best_price_difference = price_difference
                buy_date = x
                sell_date = y
                best_date_difference = date_difference
            # Added date differences because owning stock for the least amount of time is optimal    
            elsif price_difference == best_price_difference && date_difference < best_date_difference
                buy_date = x
                sell_date = y
                best_date_difference = date_difference
            end
        end
    end
    print stock_prices
    unless best_price_difference == 0
        puts "\n Buy on day #{buy_date} and sell on day #{sell_date}."
    else
        puts "There was no good opportunity to buy this stock!"
    end
end

stocks = Array.new(10)
stocks.map! { |x| x = 1 + rand(10) } # 10 days of random stock prices
stock_picker(stocks)