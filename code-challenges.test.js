// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining content.

// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

// Process: RED!

// function takes in an array and;
describe("arrayContaining", () => { 
  const colors1 = ["purple", "blue", "green", "yellow", "pink"]
// Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
const colors2 = [
  "chartreuse",
  "indigo",
  "periwinkle",
  "ochre",
  "aquamarine",
  "saffron"
]
// Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]
  it("takes in an array and removes the first item from the array and shuffles the remaining content", () => {
    expect(colors1).toEqual(expect.arrayContaining(["yellow", "blue", "pink", "green"]))
    expect(colors2).toEqual(expect.arrayContaining(["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]))
  })
  // expect statement will contain the function call to call the given functions and;
})

//FAIL!: output -  arrayContaining is not defined
// FAIL  ./code-challenges.test.js
// arrayContaining
//   ✕ takes in an array and removes the first item from the array and shuffles the remaining content (1 ms)

// ● arrayContaining › takes in an array and removes the first item from the array and shuffles the remaining content

//   ReferenceError: arrayContaining is not defined

// b) Create the function that makes the test pass.

// Process: GREEN!

// Create a function that takes in an array, removes the first item from the array and shuffles the remaining content.

// PSEUDOCODE:
// Input: an array ("takes in..")
// Output: removes the first item from the array and shuffles the remaining content

// Given arrays:
// Input: ["purple", "blue", "green", "yellow", "pink"]
// Output: ["yellow", "blue", "pink", "green"]

// Input: [ "chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
// Output: ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]

// Create a function named "arrayContaining" that takes in an array named "array". 
// Create a function named "newArray" that removes the first item from the array using the .slice() method to remove the first item from the array. Leave the parameter of the .slice method empty since the array is going to be shuffled. 
// To begin to shuffle the array, create a for loop and let the index equal to the length of the array minus one in order to start at the last index, define the condition of the for loop to let the index be more than zero (so the index will start at index 1) and then decrease a value of the index by 1 each time.  
// Create a function named "shuffle" that uses the math logic Math.floor and Math.random with no parameters to randomly select an index starting at zero index and then we need to multiply the index plus 1 (since we want our array to be more than zero and begin at index 1. 
// Now that you have set the code and math logic for the two functions "newArray" and "shuffle", you can create a new array to contain the newArray with any index value together with the newArray shuffle index to equal the newArray shuffle index together with the newArray with any index value (so it is constantly shuffling the array).  
// Return the newArray containing the values that removes the first item from the array and shuffles the remaining content.


const arrayContaining = (array) => {
  const newArray = array.slice()
    for (let i = array.length -1; i > 0; i--) {
  const shuffle = Math.floor(Math.random() * (i + 1));
      [newArray[i], newArray[shuffle]] = [newArray[shuffle], newArray[i]] 
    } 
    return newArray
}

// PASSED!
// PASS  ./code-challenges.test.js
// arrayContaining
//   ✓ takes in an array and removes the first item from the array and shuffles the remaining content (1 ms)

// Test Suites: 1 passed, 1 total
// Tests:       1 passed, 1 total
// Snapshots:   0 total
// Time:        0.145 s, estimated 1 s


// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

// Process: RED!

describe("votes", () => {
  it("takes in an object that contains up votes and down votes and returns the end tally.", () => {
    const votes1 = { upVotes: 13, downVotes: 2 }
    // Expected output: 11
    const votes2 = { upVotes: 2, downVotes: 33 }
    // Expected output: -31
    
    // expect statement will contain the function call to call the given functions and;
    // place test variable outputs inside the .toEqual() matcher parameter to compare the given outputs
      expect(votes(votes1)).toEqual(11)
      expect(votes(votes2)).toEqual(-31)
  })
})

// FAIL!: output - votes is not defined
// FAIL  ./code-challenges.test.js
// votes
//   ✕ takes in an object that contains up votes and down votes and returns the end tally. (1 ms)

// ● votes › takes in an object that contains up votes and down votes and returns the end tally.

//   ReferenceError: votes is not defined


// b) Create the function that makes the test pass.

// Process: GREEN!

// Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// PSEUDOCODE:
// Input: an object ("takes in..")
// Output: contains up votes and down votes and returns the end tally.

// Given objects:
// Input: { upVotes: 13, downVotes: 2 }
// Output: 11

// Input: { upVotes: 2, downVotes: 33 }
// Output: -31

// Create a function named "votes" that takes in an object named "obj" that contains up votes and down votes and returns the end tally.
//Create a function named "votesTally" that assigns the object and value of upVotes and use math logic to subtract the object and value of downVotes that will equal the sum of the votesTally.
//Return the end tally of the sum of all votes. 

const votes = (obj) => { 
  const votesTally = obj.upVotes - obj.downVotes
  return votesTally
}

//PASSED!
//  PASS  ./code-challenges.test.js
// votes
//   ✓ takes in an object that contains up votes and down votes and returns the end tally.

// Test Suites: 1 passed, 1 total
// Tests:       2 passed, 2 total
// Snapshots:   0 total
// Time:        0.129 s


// --------------------3) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator to pass in a dynamic number of arguments.

// a) Create a test with an expect statement using the variables provided.
// Process: RED!

// Function that takes in 2 arrays
describe("values", () => {
  it("takes in two arrays as arguments and returns one array with no duplicate values. ", () => {
    const dataArray1 = ["array", "object", "number", "string", "Boolean"]
    const dataArray2 = ["string", "null", "Boolean", "string", "undefined"]
    // Expected output: ["array", "object", "number", "string", "Boolean", "null", "undefined"]
    
    // expect statement will contain the function call to call the given functions,
    // join the two arays to return only one array
    // place test variable outputs inside the .toEqual() matcher parameter to compare the given outputs
      expect(values(dataArray1.concat(dataArray2))).toEqual(["array", "object", "number", "string", "Boolean", "null", "undefined"])
  })
})

//FAIL!: output - values is not defined
// FAIL  ./code-challenges.test.js
// values
//   ✕ takes in two arrays as arguments and returns one array with no duplicate values. 

// ● values › takes in two arrays as arguments and returns one array with no duplicate values. 

//   ReferenceError: values is not defined


// b) Create the function that makes the test pass.

// Process: GREEN!

// Create a function that takes in two arrays as arguments and returns one array with no duplicate values.

// PSEUDOCODE:
// Input: two arrays as arguments ("takes in..")
// Output: returns one array with no duplicate values

// Given arrays:
// Input (array1): ["array", "object", "number", "string", "Boolean"]
// Input (array2): ["string", "null", "Boolean", "string", "undefined"]
// Output: ["array", "object", "number", "string", "Boolean", "null", "undefined"]

// Create a function named "values" that takes in two arrays as arguments named "array1" and "array2".

//Create a function named "votesTally" that assigns the object and value of upVotes and use math logic to subtract the object and value of downVotes that will equal the sum of the votesTally.
//Returns one array with no duplicate values.

const values = (...arrays) => {
  // const myValues = (myArray1, myArray2) => {
    // const values = []
    // let getValues = myValues(...values)
// const values = (arraysOne, arraysTwo) => {
  // let arrays = [...new Set(arrays)]
  // let sinlgeValues = (...arrrays) =>{
  // let uniqueValues = values.filter(index[index]) => {
  // return arrays(...values).join(" ")
  return arrays.join("")
  // return arrayOne.filter(values).join("")
  }
// }