# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
#
# Note: For the purpose of this problem, we define empty string as valid palindrome.
#
# Example 1:
#
# Input: "A man, a plan, a canal: Panama"
# Output: true
# Example 2:
#
# Input: "race a car"
# Output: false
#
#
# Constraints:
#
# s consists only of printable ASCII characters.

# @param {String} s
# @return {Boolean}

# a string is a palindrome if it reads the same forwards and backwards
# could we have a way to reverse the word and check it against the original?

def is_palindrome(s)

# first attempt: use the easy way (Ruby's built-in methods) to do the reversing. this works but isn't really the good way of solving this challenge.

#     # first, have an edge case if the string is empty. return true if string is empty because empty counts as a valid palindrome
#     return true if s.length == 0

#     # create a variable to keep track of the reversed string. downcase and use gsub to get rid of any spaces
#     reversed_string = s.reverse.downcase.gsub!(/\s+/, '')
#     # if s and reversed_string are the same, then s is a palindrome
#     if reversed_string == s.gsub!(/\s+/, '')
#         true
#     else
#         false
#     end

# second attempt: use pointers to start on the first and last characters, compare them, and keep working inward to compare each character
    pointer_1 = 0
    pointer_2 = s.length - 1

    while pointer_1 < pointer_2
        # if the character at pointer_1 is not the same as the character at pointer_2, immediately return false
        if s[pointer_1].downcase != s[pointer_2].downcase
            # have to use return keyword to explicitly return false
            return false
        end

        # after the above check, keep moving inward by adding 1 to pointer_1 (it moves to the right) and subtracting 1 from pointer_2 (it moves to the left)
        pointer_1 += 1
        pointer_2 -= 1
    end

    # if the above check doesn't return false at any point after we've moved inward and compared all the characters, then return true
    true
end
