# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.

# PSEUDOCODE:
# Create/declare a method ('def' for defined method) named "odd_or_even" (we use snake_case in ruby) that takes in a number named "num" (parameter/argument) and determines if the number is even or odd.
# Since we are comparing whether a number is even or odd, we need to use a conditional statement that will evaluate if the value of a number that is entered is even or odd. At the end of the conditional statment, we will need to enter and "end" to close the code block.
# We need to create a string interpoloation to output the number and statement whether a number is even or odd. The string interpolation will output a statement that says whatever number (num) is entered, it will evaluate if the number entered is even or odd, therefore it will output a statement that says it is even or odd. Using "puts" at the beginning of each string interpolation will output and recognize a number integer and statement with no quotations.
# In the string interpolation, the "num" parameter must be enclosed with a hash and curly braces - #{num} - to allow user input interaction and prompt them to enter any number integer.
# To evaluate if a number is even or odd, we need to use a class of integer '2' with a symbol " % " and a logical operator (==) that will take in any even number that will have no remainder (an even number) or it will have a remainder (an odd number).
# Return an "end" to close the method code block.
# We can use a keyword named "print or p" to print out specific directions for the user to follow ('print any number') and a keyword named "gets" to wait for the user input (user 'input = the number to an integer 'to.i'), save the user input and print out a statement by calling on the original method ('odd_or_even') together with the user input that says if the number is even or odd.

# Given numbers:
# Input: 7 ("takes in..")
# Output: 7 is odd

# Input: 42
# Output: 42 is even

# Input: 221
# Output: 221 is odd

reposts1 = 7
# Expected output: '7 is odd'
reposts2 = 42
# Expected output: '42 is even'
reposts3 = 221
# Expected output: '221 is odd'

def odd_or_even(num)
  if num % 2 == 0
    puts "#{num} is even"
  else
    puts "#{num} is odd"
  end
end

print 'Print any number: '
input = gets.to_i
odd_or_even(input)
# Print any number: 7
# 7 is odd
# Print any number: 42
# 42 is even
# Print any number: 221
# 221 is odd


# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

# PSEUDOCODE:
# Create/declare a method ('def' for defined method) named "remove_vowels" (we use snake_case in ruby) that takes in a string named 'string' (parameter/argument) and removes all the vowels from the string.
# We need to call on our parameter/argument (string) and use a '.delete' method that will look at each character in the string and delete each character in the string that we want. In this case, we want to remove all of the vowels ('aeiou') and (AEIOU) whether they are uppercase or lowercase. 
# Return an "end" to close the method code block.
# We can use 'p' to print out a statement for each by calling on the original method ('remove_vowels') together with the given test variables string name (beatles_album1, beatles_album2, beatles_album3) to give us an output with all of the vowels removed from each.

# Given strings:
# Input: 'Rubber Soul' ("takes in..")
# Output: 'Rbbr Sl'

# Input: 'Sgt Pepper'
# Output: 'Sgt Pppr'

# Input: 'Abbey Road'
# Output: 'bby Rd'

beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
beatles_album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
beatles_album3 = 'Abbey Road'
# Expected output: 'bby Rd'

def remove_vowels(string)
  string.delete("aeiouAEIOU")
end

p remove_vowels(beatles_album1)
p remove_vowels(beatles_album2)
p remove_vowels(beatles_album3)
# "Rbbr Sl"
# "Sgt Pppr"
# "bby Rd"

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

# PSEUDOCODE:
# Create/declare a method ('def' for defined method) named "palindrome?" (we use snake_case in ruby) that takes in a string named 'str' (parameter/argument) and checks if the string is a palindrome.
# Since we are comparing whether a word is spelled the same forward or backward, we need to use a conditional statement that will evaluate each character of a word that is spelled the same backward or forward. At the end of the conditional statment, we will need to enter and "end" to close the code block.
# We need to create a string interpoloation to output the word and statement whether a word is spelled the same forward or backward. The string interpolation will output a statement that says whatever word is entered, it will evaluate if the word is spelled the same forward or backward, therefore it will output a statement that says it is spelled the same forward or backward. Using quotations at the beginning of each string interpolation will recognize and output a string (statement in quotations).
# In the string interpolation, the "str" parameter must be enclosed with a hash and curly braces - #{str} - to enter any word in a string.
# To evaluate if a word is spelled the same forward, we need to use a class of logical operators (==) and logical 'OR' operator ( || ) that compares each character of the word string to the string and will take in any word that is spelled the same or not spelled the same, and use a method to copmare whether any character is uppercase (.upcase) or lowercase (.downcase).
# To evaluate if a word is spelled the same backward, we need to use a '.reverse' method that compares each character of the word string to the string and will take in any word that is spelled the same backwards or not spelled the same backwards.  
# Return an "end" to close the method code block. If any of the above conidtionals are not met, the logic will state that the word is not a palindrome. 
# We can use 'p' to print out a statement for each by calling on the original method ('palindrome?') together with the given test variables string name (palindrome_tester1, palindrome_tester2, palindrome_tester3) to give us an output with all of the words that are palindrome or not palindrome words.

# Given strings:
# Input: 'Racecar' ("takes in..")
# Output: 'Racecar is a palindrome'

# Input: 'LEARN'
# Output: 'LEARN is not a palindrome'

# Input: 'Rotator'
# Output:'Rotator is a palindrome'


palindrome_tester1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_tester2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_tester3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

def palindrome? (str)
  if str == str.reverse || str == str.upcase.reverse
    "#{str} is a palindrome"
  elsif str.downcase == str.downcase.reverse
    "#{str} is a palindrome"
  else 
    "#{str} is not a palindrome"
  end
end

p palindrome?(palindrome_tester1)
p palindrome?(palindrome_tester2)
p palindrome?(palindrome_tester3)
# "Racecar is a palindrome"
# "LEARN is not a palindrome"
# "Rotator is a palindrome"