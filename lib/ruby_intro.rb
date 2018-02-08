# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr == nil || arr.length == 0
    return 0
  end
  return arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr == nil || arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr.sort!.reverse!
  return arr[0] + arr[1]
  
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if arr == nil || arr.length <= 1
    return false
  end
  arr.combination(2).each do |combo|
    return true if combo.sum == n
  end
  
  return false
end
 

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return true if s.chr =~ /^[bcdfghj-np-tv-z]/i
  return false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s =~ /^[0-1]+$/
    return true if s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return format("$%.2f", @price)
  end
  
end
