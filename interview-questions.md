# ASSESSMENT 4: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What is object-oriented programming? How is it different than functional programming?

Your answer:
Object-oriented programming means that everything in Ruby is an object (mimics behavior) and everything is an instance of a class (a blueprint). Ruby is different from functional programing because it is very readable and does not require a lot of syntax symbols/signs (i.e. =>, ===, etc.) when creating a variable/function/method/class. In place of symbols, Ruby depends on indentation which should consist of two spaces. When you create a variable in Ruby you do not have to declare a varaible or specify the data type you are using however in functional programming you do have to specify the data type.

Researched answer:
Object-oriented programming is a way to block off certain code that you don't want to be affected by the rest of your code when you make changes. It's a way to create data that can be changed and manipulated without affecting the entire code. Ruby is a scripting programming language and has many built-in methods. Ruby's style is easy to read and write. All data types are defined by class and all datatypes in Ruby are considered objects. In functional programming, you have to specify each data type and each data type is specific to that function/method.

2. What is the difference between a Float and an Integer in Ruby?

Your answer:
The difference between a Float and an Integer in Ruby is that a float is a numeric value that contains decimals (non-whole number) and an integer is a whole number that will not contain decimals. 

Researched answer:
Integers are whole numeric numbers and contains arithmic that are used like numbers in Javascript (add, subtract, multiply, divided, exponentiate, modulo - a remainder of something). Floats are non-whole numeric numbers that is followed by a decimal. Floating numbers can also produce infinity of numbers because of the decimal points whereas integers cannot, integers will only produce errors depending on your logic. 

3. Ruby has an implicit return. What does that mean?

Your answer:
In Ruby, an implicit return simply means that the last line that is in your code logic will be printed the same last line as your return method unless you say otherwise. 

Researched answer:
Implicit return is a method in Ruby that returns a result of a final line before the end of a keyword. If there is no return specified, the value od the last line is automatically returned. It is a final statement inside if the method. In order to use an implicit return in Ruby you have to use a key word named "def" followed by the name of the method(use snake_case for multiple words), your code logic to be executed and the key word "end".

4. What is a block in Ruby?

Your answer:
A block in Ruby is a code block that contains your logic. The code logic gets passed to a method and defined by using the key words "do" (after the method name) where you want it to start, in between is what will be executed and "end" is where you want the block to stop.

For example: 

num = 2

num.times do 
  p "Evelyn" 
end 
//output: "Evelyn", "Evelyn"

Researched answer:
Ruby blocks are anonymous functions that are passed to a method which require additional information to change the outcome. In order to use blocks you have to create your anonymous function with a value, create a method by using a dot notation after your anonymous function name, use keywords "do" and "end" and be sure to enter your code logic in between the keywords for the code to be executed.

5. How do you extract a value in a Ruby hash?

Your answer:
To extract a value in Ruby has, you will have to call on the key to target a specific index/value that contains what you need. You can assign a hash name a variable (create variable name 'variable_name' followed by assignment operator ' = '), add hash name followed by a hash symbol (colon ' : ') in enclosed curly braces and input your hash values after the hash name and symbol in quotation marks {hash_name: "hash values"}, then call on your variable followed by a dot notation of values ('variable_name.values,) or after you call on your variable you can add square brackets followed by a colon symbol (' : ') and reference the specific hash key that has the value you want (i.e. 'variable_name[:hash_name]).  

Researched answer:
Ruby hashes are a placeholder for unique keys and values. The structure is like an object in JavaScript but the output is a different syntax. A symbol such as a colon (:) is a unique identifier in Ruby hashes and is placed on the left side of the variable, the anonymous function symbol or "hashrocket" (=>) is followed by the variable key and is used to separate the values from the keys. To use Ruby hashes, create a function/variable, use JSX curly braces, inside curly braces enter the key name followed by a colon and followed by number or string value. To look at just the values in a hash, you can call on the variable then add '.values' to return only the values.

## Looking Ahead: Terms for Next Week

1. RSpec: RSpec is a Ruby programming language testing framework to describe behaviors of objects. RSpec is used to create specs for a specific output. 

2. Test-driven development: A test-driven development can find bugs within a set of code. You can write test cases before your code is completed. It involves automated testing to write a failing test before writing a code to make the test pass similar to how to run jest tests. 

3. PostgreSQL: PostgreSQL is a type of SQL (Structured Query Language) used for communicating with similar databases. It looks at databases thru object-oriented programming such as Ruby.

4. CRUD: 
CRUD is an acronym in Ruby and descriptions for each letter is as follows: 

Create - Create a new hash or content.

Read - Read the data, an action that returns    existing data or specific values.

Update - Update adds values/content to a hash, data types are strings and integers.

Delete - Removes a key value pair from the hash.

5. HTTP:
Hypertext
Transfer
Protocol

HTTP is a media information system that allows users to communicate data over the internet. It is a method for passing information from the internet browser to an internet server. Whenever you type in something in a browser, it makes a request to the server to get/find that information.
