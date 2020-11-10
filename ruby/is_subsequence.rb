# Given a string s and a string t, check if s is subsequence of t.
#
# A subsequence of a string is a new string which is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (ie, "ace" is a subsequence of "abcde" while "aec" is not).
#
# Follow up:
# If there are lots of incoming S, say S1, S2, ... , Sk where k >= 1B, and you want to check one by one to see if T has its subsequence. In this scenario, how would you change your code?
#
# Credits:
# Special thanks to @pbrother for adding this problem and creating all test cases.
#
#
#
# Example 1:
#
# Input: s = "abc", t = "ahbgdc"
# Output: true
# Example 2:
#
# Input: s = "axc", t = "ahbgdc"
# Output: false
#
#
# Constraints:
#
# 0 <= s.length <= 100
# 0 <= t.length <= 10^4
# Both strings consists only of lowercase characters.

# @param {String} s
# @param {String} t
# @return {Boolean}

# could iterate through each character in s using each_char and include? and see if t includes that character, but that doesn't account for order/relative positions of the characters
# could use pointers like i've used in other challenges

def is_subsequence(s, t)
    return true if s.length == 0

    # create two pointer variables that each point to the first characters in s and t
    # pointer_1 points to the first character in s. set pointer_1 to 0 (this will be the index)
    pointer_1 = 0
    # pointer_2 points to the first character in t. set pointer_2 to 0 (this will be the index)
    pointer_2 = 0

    # move pointer_2 until it matches the character that pointer_1 is pointing at
    # when the character pointer_2 is pointing at matches the character pointer_1 is pointing at, advance both pointers
     # we know we're done checking for viable characters when we've reached the end of s or t
    while pointer_1 < s.length && pointer_2 < t.length
        # while the character at pointer_2 is not the same as the character at pointer_1
        while t[pointer_2] != s[pointer_1]
            # increment pointer_2 by 1 (moves it to the next character)
            pointer_2 += 1

            # if pointer_2 is equal to the length of the string, as in we've checked every character in t, then s is not a subsequence of t
            if pointer_2 == t.length
                return false
            end
        end

        # if we're still in the bounds of both strings and the character is the same, increment both pointers by 1 (shifts both pointers over to the next character)
        pointer_1 += 1
        pointer_2 += 1
    end

    # all i have to check is whether pointer_1 is the length of s. the only way for pointer_1 to be the length of s is if all the characters are included in order because pointer_1 only advances when it's the same as pointer_2.
    pointer_1 == s.length
end
