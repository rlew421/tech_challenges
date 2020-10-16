# Say you have an array for which the ith element is the price of a given stock on day i.
#
# If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
#
# Note that you cannot sell a stock before you buy one.
#
# Example 1:
#
# Input: [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
#              Not 7-1 = 6, as selling price needs to be larger than buying price.
# Example 2:
#
# Input: [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.

# @param {Integer[]} prices
# @return {Integer}

# the greatest profit is one where you buy at the lowest possible number and sell at the highest possible number
# the low number must come before (be positioned to the left of/be positioned at a lower index) than the high number

# Ex Input: [7,1,5,3,6,4]
def max_profit(prices)
  # if the array is less than two, the output should be 0
  return 0 if prices.length < 2

  # set a variable called profit to 0. this will keep track of the profit.
  # to begin with, set the first element in the prices array as the minimum price. with the example input, it's set to 7.
  profit = 0
  minimum_price = prices[0]

  # iterate through each price in the prices array starting at the second element
  (1..prices[-1]).each do |price|
    # the profit is equal to the current price we're iterating over minus the minimum price (initially set to the first element in the array, 7)
    # since 1 - 7 = -6 and the profit (which is still 0) is not less than -6, the profit is still 0 because the if statement isn't fulfilled
    # this profit variable will keep track of each day to see if a new profit record is set. if a higher profit is reached, this will be reset.
    profit = prices[price] - minimum_price if profit < prices[price] - minimum_price

    # we also have to keep track of a new minimum price as we iterate through the prices
    # if the current price we're iterating over is less than the minimum price (originally set to the first element in the array, 7),
    # then we replace the minimum price with the current price we're on
    # in the first iteration, 1 is less than 7, so the new minimum price is 1.
    # in the second iteration, 5 is not less than 1, so the minimum price stays at 1
    # this logic remains the same for each remaining price
    minimum_price = prices[price] if prices[price] < minimum_price
  end
  # once we iterate through the array and find the greatest profit, we return it
  profit
end
