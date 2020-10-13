# Write a function to find the longest common prefix string amongst an array of strings.
#
# If there is no common prefix, return an empty string "".
#
#
#
# Example 1:
#
# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:
#
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# @param {String[]} strs
# @return {String}

def longest_common_prefix(strs)
    # we can split each word in the array into characters and compare the first character of each element. if the first character is the same on every word, we can then compare the second character in each word and so on with the rest of the characters

    # first, we need a conditional to check if there is a common prefix, and if there is none, return an empty string
    return '' if strs.empty?

    # the longest common prefix can't be longer than the shortest string in the array. we can use the shortest string to compare the other strings to
    # we can compare it to the longest string
    shortest_string = strs.min
    longest_string = strs.max
    # we can iterate over each character in the array in order, and if that character at index[1] is not found at index[1] on the longest word, we remove that character from the word (and so on with each character at corresponding indices)
    shortest_string.each_char.with_index do |letter, index|
        return shortest_string[0...index] if letter != longest_string[index]
    end
    # once we've knocked off all the characters that are not found in both, we're left with the prefix and can then return it
    return shortest_string
end
