// madLib
// Write a function that takes three strings - a verb, an adjective, and a noun - uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN".Use ES6 template literals.

// For example,

// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."



function madLib(verb, adj, noun) {
  return `We shall ${verb} the ${adj} ${noun}.`;
}


// console.log(madLib('make', 'best', 'guac'));






// isSubstring
// Input

// 1) A String, called searchString.
// 2) A String, called subString.
//   Output: A Boolean.true if the subString is a part of the searchString.

// > isSubstring("time to program", "time")
// true

//   > isSubstring("Jump for joy", "joys")
// false
// Phase II - JS Looping Constructs
// Carry on! Know your loops!




function isSubstring(searchString, subString) {
  let strArr = searchString.split(' ');
  return strArr.includes(subString);
}

// console.log(isSubstring("time to program", "time"));

// // true
// console.log(isSubstring("Jump for joy", "joys"));







// fizzBuzz
// 3 and 5 are magic numbers.

// Define a function fizzBuzz(array) that takes an array and returns a new array of every number in the array that is divisible by either 3 or 5, but not both.




function fizzBuzz(arr) {
  let output = [];

  for(let i = 0; i < arr.length; i++) {
    if (arr[i] % 3 === 0|| arr[i] % 5 === 0) {
      output.push(arr[i]);
    }
  }

  return output;
}

// console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));











//   isPrime
// Define a function isPrime(number) that returns true if number is prime.Otherwise, false.Assume number is a positive integer.


function isPrime(num) {
  if (num === 2) {
    return true;
  } else if (num < 2) {
    return false;
  }

  let i = 2;

  while (i < num) {
    if (num % i == 0) {
      return false;
    }
    i += 1;
  }
  return true;
}



// console.log(isPrime(2))

// // true
// console.log(isPrime(10))

// // false
// console.log(isPrime(15485863))

// // true
// console.log(isPrime(3548563))

// false



// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of the first n prime numbers.Hint: use isPrime as a helper method.



function sumOfPrimes(n) {
  if (n == 0) {
    return 0;
  } else if (n === 1) {
    return 2;
  }

  let outputArr = [];

  let i = 2;
  while (outputArr.length < n) {
    if (isPrime(i) === true) {
      outputArr.push(i);
    }
    i += 1;
  }

  let total = outputArr.reduce((acc, el) => {
    return acc + el;
  }, 0);

  return total;
}







// 
console.log(sumOfPrimes(0));

// 0

console.log(sumOfPrimes(1));

// 2

console.log(sumOfPrimes(4));

// 17