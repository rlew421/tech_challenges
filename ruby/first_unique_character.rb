# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode"
# return 2.

# @param {String} s
# @return {Integer}

# i could iterate through each character in the string
# for each character i iterate over, i could add that character in as a key in the hash, and the value will be incremented by 1
# the first time i add a character to a hash, it will become a key, and the value will be set to 1
# for subsequent times i come across the same character, the value will be incremented each time
# at the end, i will return the index of the first character whose value in the has is still 1
# i'm going to need .each_char for elements in a string and .each_with_index to keep track of the index

def first_uniq_char(s)
    # edge case: return -1 if the string is empty
    return -1 if s.length == 0

    # create an empty hash to store each character as keys and store the count of each character as the values, set the initial value for each key as 0
    counts = Hash.new(0)

    # iterate through each character, store it as a key in the has, and increment its value for each time it appears in the string
    s.each_char do |character|
        counts[character] += 1
    end

    # now that 've mapped each character and the number of it times it appears in the hash, i just have to iterate through the string and return the character's index where its count is 1 (only appears once)
    s.each_char.with_index do |character, index|
        return index if counts[character] == 1
    end
end
