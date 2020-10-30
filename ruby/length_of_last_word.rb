# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.
#
# If the last word does not exist, return 0.
#
# Note: A word is defined as a maximal substring consisting of non-space characters only.
#
# Example:
#
# Input: "Hello World"
# Output: 5

# @param {String} s
# @return {Integer}

# the length of the last word is the count of characters after the last space
# we find the last space, and then all characters after that last space is comprise the last word
# ex: "Hello, World"

def length_of_last_word(s)
    split_words = s.split(' ')
    last = split_words.last
    last.length
end

# this is a quick solution, but i'm sure there's a way to do this to take more edge cases into account -> revisit later
