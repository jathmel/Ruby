=begin
puts("Hello World!")
##
# fornuby to recognize a string it must first be place in quotation marks!
#Wrong Syntaxa
#puts(Hello World)

#Correct Syntax
puts("Hello World!")

puts("The answer to life, the universe, and everything is:")
puts(42)
puts(4,000)
puts(4000)

puts(3 + 4)
puts(7 - 5)
puts(3 * 4)
puts(8 / 2)
puts(9 / 2)
puts(9.0 / 2)
puts(9 / 2.0)
puts(9.fdiv(2))
puts(11 / 4 == 2)
puts(11 % 4 == 3)

puts("Racecars, Lasers, Aeroplanes")
puts("Racecars, Lasers, Aeroplanes")
puts("Racecars, Lasers, Aeroplanes")
#Variables
cool_things = "Racecars, Lasers, Aeroplanes"
puts(cool_things)
puts(cool_things)
puts(cool_things)
cool_things = "Racecars"
puts(cool_things)
puts(cool_things)
cool_things = "Lasers"
puts(cool_things)
puts(cool_things)
puts("Type in your name!")
name = gets()
puts(name)
puts(name)
puts(name)

# Methods with no parameters like gets don't need to include the parentheses
name = gets
puts(name)
puts(name)
puts(name)

#Converting from a string to a integer
# To convert from a string to a integer we us to_i method
#example:
seven = "4".to_i + "3".to_i
puts(seven)
not_seven = "4" + "3"
puts(not_seven)


cool_things = "Racecars, " + "Lasers," + " Aeroplanes"
puts(cool_things)

puts("I will add 5 to your number; type a number")
input = gets
puts (5 + input.to_i)

# Ruby is unable to add an integer and a sting because it does not understand if you want
# to add or to concatnate therefore it will give an error: no implicit conversion of Fixnum into String(TypeError)

# Converting from a number to a String
# To Convert from a number to a String we use the method to_s

one = 1.to_s
three = 3.to_s
puts(one + three + " is an unlucky number!")


# The Chomp method

puts("Type in your name!")
name = gets
puts("Hello " + name + "!")

puts("Type in your name!")
name = gets.chomp
puts("Hello " + name + "!")

puts("Type in your name!")
name = gets

name.chomp
puts("Hello " + name + "!")

puts("Type in your name!")
name = gets

name = name.chomp
puts("Hello " + name + "!" )

# Part 2
# Arithmetic are also Methods
# Equivalent to 5 + 5
ten = 5.+(5)
# Equivalent to 9 - 2
seven = 9.-(2)
# Equivalent to 4 * 3
twelve = 4.*(3)
# Equivalent to 8 / 4
two = 8./(4)

# Comparisons
puts(3 < 4)
puts(5 > 10)

puts(3 == 4)
puts(4 != 5)
puts("Is Three equal to Three")
puts("Three" == "Three")
puts("Is three equal to Three")
puts("three" == "Three")

# If, Else and Elsif

puts("Type in a number")

num = gets.to_i

if num < 10
  puts("That's not s big number!")
end
puts("Thanks for typing in a number")

# if, else
puts("Type in a number!")
num = gets.to_i
if num < 10
  puts("That's not a big number!")
else
  puts("Wow, that's a big number!")
end
puts("Thank for typing in a number!")

#if, else, Elsif
puts("Type in a number!")
num = gets.to_i

if num < 10
  puts("That's not a big number!")
elsif num < 100
  puts("That's a pretty big number!")
elsif num < 1000
  puts("Wow thar's a large number!")
else
  puts("Holy cow, that number is blowing my mind!")
end

puts("Thanks for typing in a number!")

# Logical Connectives
puts("Input a number!")

number = gets.to_i
if (number > 10) && (number < 20)
  puts("Your number was greater than ten AND less than twenty!")
else
  puts("Your number was either less than ten, OR greater that twenty")
end

puts("Input a number!")
num = gets.to_i

if (num == 7) || (num == 13)
  puts("You input a magic number!")
else
  puts("Your number is not magical")
end
# Negation
puts(123 == 123)
puts(!(123 == 123))

# Looping
puts("Input a number")
num = gets.to_i

while num < 100
  puts("That number is too small! Try again!")

  num = gets.to_i
end
puts("You typed " + num .to_s + " which is at least 100!")

i = 0
while i < 3
  puts("Hello world!")
  i = i + 1
end
puts("All done!")

# Infinite loops
#while 1 == 1
 #puts("We're trapped in a loop!")
#end

# Arrays
cool_things = ["Racecars", "Lasers", "Aeroplanes"]
four_primes = [2, 3, 5, 7]
#an_empty_array[]

cool_things = ["Racecars", "Lasers", "Aeroplanes"]
puts(cool_things[0])
puts(cool_things[1])
puts(cool_things[2])

presidents = ["George Washington", "John Adams", "Thomas Jefferson", "James Madison", "James Monroe", "John Quincy Adams"]
puts(presidents.length)

idx = 0
while idx < presidents.length
  puts(presidents[idx])
  idx = idx + 1
end
puts("presidents loop completed")
=end
#Adding items to an Array
=begin
cool_things = []
while cool_things.length < 3
  puts("Tell me a cool thing!")
  one_cool_thing = gets.chomp
  cool_things.push(one_cool_thing)
end

puts("Here's some cool things backwards")

idx = cool_things.length - 1
while idx >= 0
  puts(cool_things[idx])
  idx = idx - 1
end

# Adding Items to the start of an Array
cool_things = []

while cool_things.length < 3
  puts("tell me a cool thing")
  one_cool_thing = gets.chomp
  cool_things.unshift(one_cool_thing)
end
puts("Here's some cool things in backwards order:")
idx = 0
while idx < cool_things.length
  puts(cool_things[idx])
  idx = idx + 1
end
=end
# Removing items from an Array
arr = [2, 3, 5, 7]
puts(arr[0])

item = arr.shift
puts(item)

puts(arr == [3, 5, 7])

arr = [2, 3, 5, 7]
puts(arr[3])

item = arr.pop
puts (item)
puts(arr.length)
puts(arr == [2, 3, 5])

# Setting position in an Array
array = [2, 3, 5]
arr[1] = "there"
puts(arr == [2, "there", 5])

# Accessing a position pass te last index
arr = [2, 3, 5, 7]
puts(arr[0])
puts(arr[1])
puts(arr[2])
puts(arr[3])

puts(arr[4])
=begin
# More about Strings
puts("ringo".length)
puts(nil)
str = "abcd"
idx = 0
while idx < str.length
  puts(str[idx])
  idx = idx + 1
end
puts(nil)
puts("abc" == ["a", "b", "c"])

# Splitting  nad Joining Strings
puts(nil)
puts("this is a sentence".split == ["this", "is", "a", "sentence"])

["this", "is", "a", "sentence"].join(" ") == "this is a sentence"
["Racecars", "Lasers", "Aeroplanes"].join(", ") == "Racecars, Lasers, Aeroplanes"
puts(nil)
puts(nil)

# Writing your own Methods
name = "Gizmo"
idx = 0
while idx < 3
  puts(name)
  idx = idx + 1
end

puts(nil)

name = "Earl"
idx = 0
while idx < 3
  puts(name)
  idx = idx + 1
end

puts(nil)

name = "Markov"
idx = 0
while idx < 3
  puts(name)
  idx += 1
end

puts(nil)
puts(nil)

def print_three_times(name)
  idx = 0
  while idx < 3
    puts(name)
    idx += 1
  end
end

print_three_times("Gizmo")
print_three_times("Earl")
print_three_times("Markov")

puts(nil)
# Value returning Methods
def first_square_numbers(number_of_squares)
  squares = []

  idx = 0
  while idx < number_of_squares
    squares.push(idx * idx)
    idx = idx + 1
  end
  return squares
end

puts("How many square numbers do you want?")
number_of_desired_squares = gets.to_i
squares = first_square_numbers(number_of_desired_squares)

idx = 0
while idx < squares.length
  puts(squares[idx])
  idx = idx + 1
end

puts(nil)
#Breaking Out of Loops
puts("Please type GIZMO")
while true
  input = gets.chomp
  if input == "GIZMO"
    break
  end
  puts("Try typing GIZMO again")
end
puts("Thanks for typing GIZMO")

puts(nil)
#Returning early
def say_hello(number_of_times)
  while number_of_times != 0
    puts("Hello!")
    number_of_times -=1
  end
end

say_hello(5)
=end
def say_hello(number_of_times)
  if number_of_times < 0
    puts("That is an invalid number of times")

    return
  end

  while number_of_times != 0
    puts("Hello!")
    number_of_times -= 1
  end
end
say_hello(-10)

puts(nil)

def smallest_square(lower_bound)
  i = 0
  while true
    square = i * i
    if square > lower_bound
      return square
    end
    i = i + 1
  end
end

puts(smallest_square(10))

def middle_str(string)
  
  vowel = ["a", "e", "i", "o", "u"]
  i = 0
  while i < string.length

  until string.split("").include?(vowel)
    string.split("").drop(i)
  end
    i += 1
  end
  string
end
p middle_str("hello")
