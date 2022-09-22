def stock_picker(array)
  days = []
  profit = 0
  min_profit = array[0]
  min_index = 0

  array.each_with_index do |element, index|
    if element < min_profit
      min_profit = element
      min_index = index
    end

    if element - min_profit > profit
      profit = element - min_profit
      days = [min_index, index]
    end
  end
  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])