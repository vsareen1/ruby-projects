def stock_picker(stocks)
  
  best_days = nil
  max_profit = nil
  stocks_day_length = stocks.length
  left = 0
  # Traverse through stocks and find the best sell time
  while left < stocks_day_length do
    right = left + 1
    while right < stocks_day_length do
      profit = stocks[right] - stocks[left]
      if max_profit.nil?
        max_profit = profit
        best_days = [left, right]
      elsif profit > max_profit
        max_profit = profit
        best_days = [left, right]
      end
      right += 1
    end
    left += 1
  end

  return best_days

end

p stock_picker([17,3,6,9,15,8,6,1,10])
