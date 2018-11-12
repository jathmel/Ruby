primes.rb

primes = []

num = 1

while primes.count < 100
  is_prime = true
  (1..num).each do |idx|
    if num % idx == 0
      is_prime = false
      break
    end
  end

  if is_prime
    primes << num
  end
end
puts primes
require 'byebug'

def prime?(num)
  # debugger


  (2...num).each do |idx|
    if num % idx == 0
      return false
    end
  end
  true
end
# (byebug)

def primes(num_primes)
  debugger
  ps = []
  num = 1
  while ps.count < num_primes
    ps << num if prime?(num)
    num += 1
  end
  ps
end


if $PROGRAM_NAME == __FILE__
  puts primes(100)
end
