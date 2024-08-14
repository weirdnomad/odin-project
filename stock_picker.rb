def stock_picker(array)
  p array.shuffle!
  best_days = []
  last_profit = 0
  profit = 0
  array.each_with_index do |buy, buy_index|
    array.each_with_index do |sell, sell_index|
      if sell_index > buy_index
        last_profit
        profit = sell - buy
        if profit > last_profit
          best_days.clear
          best_days.push(buy_index, sell_index)
          last_profit = profit
        end
      end
    end
  end
  p best_days
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
