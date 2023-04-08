# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.

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


# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

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