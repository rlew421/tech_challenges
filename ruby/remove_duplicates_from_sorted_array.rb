# Given a sorted array nums, remove the duplicates in-place such that each element appears only once and returns the new length.
#
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
#
# Example 1:
#
# Given nums = [1,1,2],
#
# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
#
# It doesn't matter what you leave beyond the returned length.
# Example 2:
#
# Given nums = [0,0,1,1,1,2,2,3,3,4],
#
# Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.
#
# It doesn't matter what values are set beyond the returned length.
# Clarification:
#
# Confused why the returned value is an integer but your answer is an array?
#
# Note that the input array is passed in by reference, which means a modification to the input array will be known to the caller as well.
#
# Internally you can think of this:
#
# // nums is passed in by reference. (i.e., without making a copy)
# int len = removeDuplicates(nums);
#
# // any modification to nums in your function would be known by the caller.
# // using the length returned by your function, it prints the first len elements.
# for (int i = 0; i < len; i++) {
#     print(nums[i]);
# }

# @param {Integer[]} nums
# @return {Integer}

# ORIGINAL THOUGHTS
# we can iterate through the array of sorted numbers
# compare each character to the next. if the current character is equal to the next character, delete the current (or next) character
# if the character is different to the next character, keep it
# keep iterating through each character in the array and compare it to the character to the right of it

# REVISED THOUGHTS
# we're returning a count of the unique values
# modify the existing array so that all the unique values are at the front (we don't have to delete any elements, just replace them)

# ex: nums = [1, 1, 2]
def remove_duplicates(nums)
    # we need a conditional to account for when nums is an empty array or only contains a single element
    return 0 if nums.length == 0 || nums.length == 1

    # we set a variable called pointer to keep track of which element is on the left of the comparison
    pointer = 0

    # iterate through each number in the array starting with the second element until it reaches the last element (range is element[1] to element[-1])
    (1..nums[-1]).each do |num|
        # for each number we're iterating through, if the number at the 0th index (the first element) is not equal to the number,
        if nums[pointer] != num
            # shift over the pointer by one to the right (pointer is now at nums[1], the second element)
            pointer += 1
            # replace pointer with the current number (this gives us [1,2,1])
            nums[pointer] = num
        end
    end
    pointer + 1
end
