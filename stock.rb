def stock_picker(prices)
  min_price=Float::INFINITY
  buy_day=0
  sell_day=0
  profit=0
  prices.each_with_index do|price,i|
    if price<min_price
        min_price=price
        buy_day=i
    elsif  profit<price-min_price
      profit=price-min_price
      sell_day=i

     end
    end 
  return []if profit==0;
  return[buy_day+1,sell_day+1]
end  

prices = [7, 1, 5, 3, 6, 4]
result=stock_picker(prices)
puts result