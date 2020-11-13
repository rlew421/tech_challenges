# Write a function that takes a string as input and reverse only the vowels of a string.
#
# Example 1:
#
# Input: "hello"
# Output: "holle"
# Example 2:
#
# Input: "leetcode"
# Output: "leotcede"
# Note:
# The vowels does not include the letter "y".

# @param {String} s
# @return {String}

# have an array of vowels to keep track of which characters are vowels
# i could use two pointers
# pointer_1 initially points to the first character in the string
# pointer_2 initially points to the last character in the string
# pointer_1 moves right and pointer_2 moves left
# ex: "leetcode"
# pointer_1 is on l to start with, pointer_2 is on the last e
# pointer_1 is on l, which is not a vowel. increment by 1 to get to the next character. pointer_2 is on e, which is a vowel, so it stays where it is.
# after incrementing, pointer_1 is now on e, which is a vowel. pointer_2 is on the last e.
# swap the values of pointer_1 and pointer_2, an e for an e.
# increment pointer_1 by 1 to move to the right, decrement pointer_2 by 1 to move it to the left. now pointer_1 is on e and pointer_2 is on d. pointer_1 is on a vowel but pointer_2 is not. pointer_1 stays where it is, and pointer_2 decrements by 1 to move to the left.
# pointer_1 is still on e, pointer_2 is on o, which is also a vowel.
# swap the values of pointer_1 and pointer_2

def reverse_vowels(s)

end
