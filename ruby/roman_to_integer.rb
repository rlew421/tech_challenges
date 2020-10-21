# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
#
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
#
# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
#
# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.
#
#
#
# Example 1:
#
# Input: s = "III"
# Output: 3
# Example 2:
#
# Input: s = "IV"
# Output: 4
# Example 3:
#
# Input: s = "IX"
# Output: 9
# Example 4:
#
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.
# Example 5:
#
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
#
#
# Constraints:
#
# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].

# @param {String} s
# @return {Integer}
def roman_to_int(s)
    # create a hash that maps each Roman numeral to its corresponding integer
    roman_pairs = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    # set a variable called total equal to 0 to keep track of our running total
    total = 0

    # when the number on the left is greater than the number on the right, we only add the number on the left to the total (ex: VIII)
    # when the number on the left is less than the number on the right, we subtract the number on the left from the total (ex: IV). Then, we pass over the next character, we add the V. Essentially, we subtract 1 and then add 5.

    # turn the string into characters first
    # for each character in the string, map it to its corresponding value in the hash
    s.chars.each_with_index do |roman_numeral, index|
        # 1. We need a condition to check that we haven't reached the end of the string and that we still have characters to iterate over => if the index is less than the length of the string minus 1 (shorter than the length of the string)
        # AND
        # 2. We need a condition to compare the current integer to the next integer to its right => the current roman numeral's value is less than the value of the character to the right of it, we subtract the current roman numeral's value from the total, else if the current roman numeral value is greater, we add it.
        if (index < s.length - 1) && roman_pairs[roman_numeral] < roman_pairs[s[index+1]]
            total -= roman_pairs[roman_numeral]
        else
            total += roman_pairs[roman_numeral]
        end
    end
    # after we're done iterating through the roman numerals in the string and adding up the values, we return the total
    total
end
