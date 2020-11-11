# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
#
# You may assume that the array is non-empty and the majority element always exist in the array.
#
# Example 1:
#
# Input: [3,2,3]
# Output: 3
# Example 2:
#
# Input: [2,2,1,1,1,2,2]
# Output: 2

# @param {Integer[]} nums
# @return {Integer}

# could iterate through each number and add each number to a hash
# if the number doesn't exist in the hash yet, add it and set the count to 1
# if the number already exists as a key in the hash, increment its value by 1
# at the end, return the key with the largest value
# i would have to create an extra data structure (hash) for this.

def majority_element(nums)
    # if there is only one element, just return the element
    return nums[0] if nums.length == 1

    # create a hash to keep track of the count of each element
    element_counts = Hash.new

    # iterate through each element in the array
    nums.each do |num|
       # if the element exists as a key in the element_counts hash, increment its value by 1
       if element_counts[num]
          element_counts[num] += 1
       else
       # if the element doesn't exist as a key in the element_count hash, add it and set its value equal to 1
          element_counts[num] = 1
       end
    end

    # at the end, find the key value pair whose value is the highest
    max_key_value_pair = element_counts.max_by{|k,v| v}

    # the above max_by returns an array of the key and the value, in this case, [. to get just the key, access the element at the index of 0
    max_key_value_pair[0]
end
