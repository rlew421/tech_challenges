/**
 * @param {number} n
 * @return {number}
 */

// prime numbers are numbers that are only divisible by 1 and themselves. 2, 3, 5, and 7 are prime numbers.

// ex: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var countPrimes = function(n) {
    // create an empty array to the prime numbers. i'll return the count of this at the end.
    let nums = [];
    // create a variable called primeCount to keep track of the number of prime numbers. this should initially be set to 0.
    let primeCount = 0;

    // iterate through the numbers between 0 and the input. for each number,starting at 0 and until we reach the target (in this case, 10), set every value to true
    for (let i = 0; i < n; i++) {
        nums[i] = true;
    }

    // we then have to get rid of multiples of 2. starting at the number indexed 2 until the index of 4
    // this outer for loop checks the numbers in the array
    for (let i = 2; i * i < n; i++) {
        // this inner for loop checks the multiples of that number
        if (nums[i] === true) {
            for (let j = 2; j * i < n; j++) {
                nums[j * i] = false
            }
        }
    }

    // this for loop checks over the array again for the value that are still set to true. for each value that's still true, increment the primeCount by 1.
    for (let i = 2; i < n; i++) {
        if (nums[i] === true) {
            primeCount++;
        }
    }

    // at the end, return the primeCount
    return primeCount;
};
