/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */

// i have two arrays whose elements are already sorted
// i'm not making or pushing elements into a third array
// i'm preserving the first array, nums1, and pushing elements from nums2 into nums1
// i can't join the two arrays together

// there should be a conditional that accounts for elements that are 0 since we want to remove those
// i can compare the first two elements in each array, 1 and 2. since 1 is lower, it stays where it is
// shift to the second element and in nums1 and compare 2 and 2. since they're equal, remove the 2 in nums 2 and put it after the 2 in nums1
// shift to 3 and 5. since 3 is less than 5, it should stay where it is.
// add 5 and 6
// we want an iteration that will run while there are still elements in the array

var merge = function(nums1, m, nums2, n) {
    // i'm returning nums 1 at the end, and it should be sorted
    // nums 2 is the second numbers array
    // m and n are the number of initialized numbers in nums1 and nums 2, respectively
    // i need to compare the last initialized number in m and n, in this case, compare 3 and 6

    // first is the last initialized number in nums1
    let first = m - 1
    // second is the last initialized number in nums2
    let second = n - 1

    // for loop that iterates backwards. for each element starting at in the index of 5 iterating backwards until we reach 0
    for (let i = m + n - 1; i >= 0; i--) {
        // if the number that second is pointing to is less than 0, break
        if (second < 0) {
            break
        }

        // compare the last initialized numbers of nums1 and nums2
        if (nums1[first] > nums2[second]) {
            // replace the current number in nums1 with nums1[first]
            nums1[i] = nums1[first];
            // since we just compared first, we move first ot the left.
            first--;
        } else {
            // replace the last number in nums 1 with the nums2[second]. this replaces 0 with 6.
            nums1[i] = nums2[second];
            // since we just compared second, we move second to the left. second is now equal to 5.
            second--;
        }
    }
};

// we know we're done merging the sorted array when the second pointer is at index less than 0. we have a case that causes a break once we've worked backward to the index of -1.
