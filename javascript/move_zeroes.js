// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//
// Example:
//
// Input: [0,1,0,3,12]
// Output: [1,3,12,0,0]
// Note:
//
// You must do this in-place without making a copy of the array.
// Minimize the total number of operations.

/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */

// i could iterate through each number in the nums array and compare the current number with the number to the right of it
// on the first iteration, assess the first element
// compare the first element to the element to the right of it. if the first element is a 0, switch it with the number to the right of it.
// if the number to the right is a 0 and the first element is not, don't switch the two

// an easier way to go through this instead of comparing each number individually would be to have a pointer that stays back on the first 0 and another pointer that goes ahead and finds a non-zero element. when the pointer that goes ahead finds a non-zero element, it switches values so that the pointer that stayed back now has the non-zero elemen and the pointer that went ahead now has the zero. this essentially swaps the two in place.

var moveZeroes = function(nums) {
    // create a variable to stay in place
    let anchor = 0;

    // set another variable called explorer equal to 0. the for loop will keep running through the number of elements in the array
    for (let explorer = 0; explorer < nums.length; explorer++) {
        // if the current number we're iterating over is not 0
        if (nums[explorer] !== 0) {
            // store the value at nums[anchor], which is zero, a variable called temporary
            let temporary = nums[anchor];
            // switch the values of the anchor and explorer. the values trade places, and now the current number we're on takes the place of the zero at anchor.
            nums[anchor] = nums[explorer];
            // we assign the current number to the value we stored for temporary, which is zero
            nums[explorer] = temporary;
            // keep advancing through the nums array for as long as there are still elements. if the current number we're on is zero, we don't go through any of this logic and just move on to the next element
            anchor++;
        }
    }
};
