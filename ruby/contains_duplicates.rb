# Given an array of integers, find if the array contains any duplicates.
#
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
#
# Example 1:
#
# Input: [1,2,3,1]
# Output: true
# Example 2:
#
# Input: [1,2,3,4]
# Output: false
# Example 3:
#
# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true

# @param {Integer[]} nums
# @return {Boolean}

# i could use a separate data structure to store the element, like an array
# when iterating through each number in the array, i could check to see if it exists as a value in that array
# if it does, return true

def contains_duplicate(nums)
    # create an array to store each number we iterate through as we go
    stored_nums = []

    # iterate through each of the numbers
    nums.each do |num|
      # if the stored_nums array doesn't already include the number, add it to the stored_nums array. if the number is already in the stored_nums array, return true (must be an explicit return)
      if !stored_nums.include?(num)
        stored_nums << num
      else
        return true
      end
    end

    # if we've iterated through the entire nums array and there are no duplicates, return false
    false
end
