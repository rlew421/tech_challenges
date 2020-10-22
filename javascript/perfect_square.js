//  @param {Integer} num
//  @return {Boolean}

//  an integer is a perfect square when it is equal to a number times the same number
//  an integer is a perfect square if when divided by a number, the result is the same number we divided by
//  the number we're dividing by has to be 1-9
//  use binary search to divide the data set of 1-9 in half. 5 is the midpoint.

let isPerfectSquare = function(num) {
 // if the number is less than 1, automatically return false
  if (num < 1) {
    return false;
  }

 // if the number is exactly equal to 1, return true because 1 is a perfect square
  if (num === 1) {
    return true;
  }


 // set variables leftMarker and rightMarker. split the data set in half and find the midpoint based on the left and right markers.
  let leftMarker = 1;
  let rightMarker = num;

// while the leftMarker is less than or equal to the rightMarker
  while (leftMarker <= rightMarker) {
    // set a variable called midpoint
    let midpoint = leftMarker + Math.floor((rightMarker - leftMarker) / 2);

    // if the midpoint times the midpoint is equal to the number, return true because the number is a perfect square
    if (midpoint * midpoint === num) {
      return true;
    // if the midpoint times the midpoint is less than the number, set the leftMarker equal to the midpoint + 1 (this cancels out searching the lower numbers which we know it can't be)

    } else if (midpoint * midpoint < num) {
      leftMarker = midpoint + 1;

    // if the midpoint times the midpoint is greater than the number, set the rightMarker equal to the midpoint -1 (this cancels out searching the greater numbers to the right of the midpoint because we know they aren't viable)
    } else if (midpoint * midpoint > num) {
      rightMarker = midpoint - 1;
    }
  }

 // if, after searching through the possible numbers and the last number in the possible numbers (the last midpoint) times itself still doesn't equal the target number, return false because this number isn't a perfect square
  return false;
};
