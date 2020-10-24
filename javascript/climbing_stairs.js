/**
 * @param {number} n
 * @return {number}
 */

/* 1 is the only input that has 1 distinct way of climbing to the top
2 is the only input that has 2 distinct ways of climbing to the top
this problem can be broken down according to the individual 1 steps and 2 steps
for any input, we can break the input down into individual steps of 1
for an input of 2 ore greater, we can break the input down into pairs (2 steps each, count by 2)
for inputs that are greater than 2, we can also break down each pair of 2 into individual steps (e.g. if n = 4, we can break it down to 1 step 1 step 2 step, or 2 step 1 step 1 step, or break down the 2 steps into two 1 steps). every set of two can be broken down into invidual stairs of 1.
i know if it's a valid path/i'm done if there are 0 steps remaining. i shouldn't be able to exceed the number of steps remaining. */

var climbStairs = function(n) {
    // set a variable, countingFunction, that accepts arguments of the number of stairs remaining and the saved results (map that holds the saved results for valid paths)
    let countingFunction = (stairsRemaining, savedResults) => {
        // get the base cases out of the way
        // if there are no more stairs remaining, return 0 (this function won't continue when we run out of stairs or if n is a negative number)
        if (stairsRemaining < 0) {
            return 0;
        }

        // if the number of stairs is 0 (once the number of stairs hits 0), return 1 because it's a valid case
        if (stairsRemaining === 0) {
            return 1;
        }

        // we can memoize results of numbers so we don't have to run calculations for the same numbers again. if a result is stored in savedResults, return the result instead of going through the logic again
        if (savedResults[stairsRemaining]) {
            return savedResults(stairsRemaining);
        }

        // if we get past these if statements, it's a number we haven't yet seen. calculate the result for whichever number i'm on and save it to savedResults map.
        // we call the countingFunction twice. theese two function calls represent the two scenarios (stairsRemaining - 1 step if we take one step, stairsRemaining - 2 steps if we take two steps)
        savedResults[stairsRemaining] = countingFunction(stairsRemaining - 1, savedResults) + countingFunction(stairsRemaining - 2, savedResults);
        return savedResults[stairsRemaining];
    };


    // this is where I call the countingFunction and pass in the number of stairs and an object (initially empty) that stores our saved results
    return countingFunction(n, {});
};

// this function keeps running recursively until we hit the base case that causes the function to end
