// Given a non-empty array of digits representing a non-negative integer, increment one to the integer.
//
// The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.
//
// You may assume the integer does not contain any leading zero, except the number 0 itself.
//
//
//
// Example 1:
//
// Input: digits = [1,2,3]
// Output: [1,2,4]
// Explanation: The array represents the integer 123.
// Example 2:
//
// Input: digits = [4,3,2,1]
// Output: [4,3,2,2]
// Explanation: The array represents the integer 4321.
// Example 3:
//
// Input: digits = [0]
// Output: [1]
//
//
// Constraints:
//
// 1 <= digits.length <= 100
// 0 <= digits[i] <= 9

/**
 * @param {number[]} digits
 * @return {number[]}
 */

// the digits before the last digit don't seem to matter
// all i'm concerned with is incrementing the digit indexed at [-1] while also preserving any of the digits that come before it

var plusOne = function(digits) {
    // iterate through each digit in the array starting from the last element
    for (let i = digits.length - 1; i >= 0; i--) {
    // if the last digit isn't 9, all i have to do is increment that digit and return the digits array
    if (digits[i] !== 9) {
      digits[i]++;
      return digits;
    } else {
    // if the last digit is 9, the digit has to be changed to a 0
      digits[i] = 0;
    }
  }

  digits.unshift(1);
  return digits;
};
