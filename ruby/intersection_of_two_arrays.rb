# Given two arrays, write a function to compute their intersection.
#
# Example 1:
#
# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2]
# Example 2:
#
# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [9,4]
# Note:
#
# Each element in the result must be unique.
# The result can be in any order.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}

# the intersection of two arrays are the numbers the two arrays have in common, but only the unique values if there are repeats of the same number
# what is the most efficient way i can check if a number exists in both arrays without using brute force?

def intersection(nums1, nums2)
    # create a new set called first_set that contains all the unique elements from nums1
    first_set = nums1.uniq

    # create another set called intersection_set that contains only the shared elements from first_set and nums2
    intersection_set = nums2.map do |num|
        num if first_set.include?(num)
    end

    # return intersection_set and call uniq on the array to return only the unique elements that both arrays share
    intersection_set.uniq
end
