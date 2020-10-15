# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
# An input string is valid if:
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
#
#
# Example 1:
#
# Input: s = "()"
# Output: true
# Example 2:
#
# Input: s = "()[]{}"
# Output: true
# Example 3:
#
# Input: s = "(]"
# Output: false
# Example 4:
#
# Input: s = "([)]"
# Output: false
# Example 5:
#
# Input: s = "{[]}"
# Output: true

# @param {String} s
# @return {Boolean}

# each type of opening bracket must also have a corresponding closing bracket of the same type. it's not possible to have an extra opening or closing bracket anywhere.
# we could count how many of each type of bracket we have? we would have to have the same number of opening and corresponding closing brackets
# we can't just use counters because relative placement of each bracket also matters
# could we use a stack or queue here?
# we could map each opening bracket to its corresponding closing bracket with a hash

def is_valid(s)
    bracket_pairs = {
                     '(' => ')',
                     '[' => ']',
                     '{' => '}',
                    }

    stack = []

    # iterate through each character in the string
    s.each_char do |char|
        # if the character we're iterating over is a key in the bracket pairs hash (is an opening bracket), add the mapping of that character to the stack
        if bracket_pairs.key?(char)
            stack << bracket_pairs[char]
        else
        # if the character we're iterating over is not a key in the bracket pairs hash (if it's a closing bracket), pop off the character that's currently at the top of the stack
           top_character = stack.pop
            # if the character we're iterating over doesn't match the top character, return false
            # if it's valid, this closing bracket should match the top character
            return false unless char == top_character
        end
    end

    # if the stack is empty (true), then it's a valid expression
    stack.empty?
end
