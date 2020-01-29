# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0

  arr.each do |num|
    sum += num
  end
    
  return sum
end

def max_2_sum(arr)
  
  if arr.length() < 1
    return 0
  end
    
  if arr.length() == 1
    return arr[0]
  end
    
  max = -100
  nextMax = -100
  
  arr.each do |num|
    if num > nextMax
      nextMax = num
    end
    if nextMax > max
      temp = max
      max = nextMax
      nextMax = temp
    end
  end
  
  return max + nextMax
    
end

def sum_to_n?(arr, n)
  
  for x in 0 .. arr.length - 1
  
    for y in 0 .. arr.length - 1
    
      if x != y
        
        if (arr[x] + arr[y]) == n
          return true
        end
        
      end
    
    end
  
  end
  
  return false
  
end

# Part 2

def hello(name)
  str = "Hello, " + name
  return str
end

def starts_with_consonant?(s)
  
  if (s.length < 1)
    return false
  end
  
  letter = s[0..0].downcase
  
  if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
    return false
  end
  
  if letter.match(/^[[:alpha:]]$/)
    return true
  end
  
  return false
  
end

def binary_multiple_of_4?(s)
  
  if s.length < 1
    return false
  end
  
  for x in 0 .. s.length - 1
    if !(s[x].match(/[0-9]/))
      return false
    end
  end
    
  
  num = s.to_i
  
  if num % 4 == 0
    return true
  end
  
  return false
  
end

# Part 3

class BookInStock
  @isbn = ""
  @price = 0.0
  
  def initialize(isbn, price)
    
    if isbn.length < 1
      raise ArgumentError.new("ISBN needs to have length > 0")
    end
    
    if (price <= 0)
      raise ArgumentError.new("Price must be greater than 0")
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end 
  
  def price
    @price
  end 
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  
  def price_as_string
    return "$" + ('%.2f' % price.to_s)
  end
end
