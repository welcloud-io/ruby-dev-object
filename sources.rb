
# Many languages distinguish between functions, which have no associated object, and methods, which are invoked on a receiver object. 
# Because Ruby is a purely object-oriented language, all methods are true methods and are associated with at least one object. 

# for
hash = {:a=>1, :b=>2, :c=>3}
for key,value in hash
  puts "#{key} => #{value}"
end

# each
hash = {:a=>1, :b=>2, :c=>3}
hash.each do |key,value|
  puts "#{key} => #{value}"
end

3.times { puts "thank you!" }

puts [1,2,3].collect {|x| x*x}
puts [1,2,3].map {|x| x*x}

puts (1..10).reject {|x| x.even?}

data = [2, 5, 3, 4]
sum = data.inject {|sum, x| sum + x }
puts sum
float_product = data.inject(1.0) {|p,x| p*x }
puts float_product
max = data.inject {|m,x| m>x ? m : x }
puts max


def twice
  yield
  yield
end

x = 2
twice { puts x }

def twice_2
  yield 1 # bloc(1)
  yield 2 # bloc(2)
end

x = 3
twice_2 { |y| puts x * y }

class A
  def initialize(i)
    @i = i
  end
  
  def times
    for x in 1..@i do
      yield x if block_given?
    end
  end
end

a = A.new(3)
a.times { |y| puts 'b' + y.to_s }

a.times

s = "hello"
puts s.enum_for(:each_char).map {|c| c }
puts s.each_char.map {|c| c }
puts s.chars.map {|c| c }

def twice
  if block_given?
    yield
    yield
  else
    self.to_enum(:twice)    
  end
end

puts twice

i = [1,2].map do |x| 
  x ** 2 
end
puts i

# external iterator
iterator = 9.downto(1)
loop do                 # Loop until StopIteration is raised
  print iterator.next   # Print next item
end
puts "...blastoff!"

# internal iterator
iterator.each { |x| print x}
puts "...blastoff!"

# The block takes two words and "returns" their relative order
puts ['a','b', 'c', 'd'].sort! {|x,y| y <=> x }

# argument with default value
def prefix(s, len=1)
  s[0,len]
end

puts prefix('abcd')
puts prefix('abcd', 2)


# Return the last character of s or the substring from index to the end
def suffix(s, index=s.size-1)
  s[index, s.size-index]
end

puts suffix('abcd', 1)


# Return the largest of the one or more arguments passed
def max(first, *rest)
  # Assume that the required first argument is the largest
  max = first
  # Now loop through each of the optional arguments looking for bigger ones
  rest.each {|x| max = x if x > max }
  # Return the largest one we found
  max
end

puts max(1)       # first=1, rest=[]   
puts max(1,2)     # first=1, rest=[2]  
puts max(1,2,3)   # first=1, rest=[2,3]

# No more than one parameter may be prefixed with an *. In Ruby 1.8, 
# this parameter must appear after all ordinary parameters and after all parameters with defaults specified. 

data = [3, 2, 1]
p max(*data) 
p max(data) 


# This method returns an array a of n numbers. For any index i, 0 <= i < n,
# the value of element a[i] is m*i+c. Arguments n, m, and c are passed
# as keys in a hash, so that it is not necessary to remember their order.
def sequence(args)
  # Extract the arguments from the hash.
  # Note the use of the || operator to specify defaults used
  # if the hash does not define a key that we are interested in.
  n = args[:n] || 0
  m = args[:m] || 1
  c = args[:c] || 0
  a = []                      # Start with an empty array
  n.times {|i| a << m*i+c }   # Calculate the value of each array element
  a                           # Return the array
end

p sequence( {:n => 3, :m => 5} )
p sequence(:n => 3, :m => 5)
p sequence(n: 3, m: 5)
p sequence :n => 3, :m => 5
p sequence n: 3, m: 5


words = ['and', 'but', 'car']     # An array of words
p words.map &:upcase    # Convert to uppercase with String.upcase
p words.map {|w| w.upcase } # This is the equivalent code with a block


# This method creates a proc from a block
def makeproc(&p)  # Convert associated block to a Proc and store in p
  p               # Return the Proc object
end

adder = makeproc {|x,y| x+y }

puts adder.call(2,2)

# Lambda History
# Lambdas and the lambda method are so named in reference to lambda calculus, 
# a branch of mathematical logic that has been applied to functional programming languages. 
# Lisp also uses the term "lambda" to refer to functions that can be manipulated as objects. 

# 1.8
succ = lambda {|x| x+1}
p succ.call(1)

# 1.9
succ = ->(x){ x+1 }
p succ.call(2)


#~ 6.6. Closures
#~ In Ruby, procs and lambdas are closures. The term "closure" comes from the early days of computer science; 
#~ it refers to an object that is both an invocable function and a variable binding for that function. 
#~ When you create a proc or a lambda, the resulting Proc object holds not just the executable block but also bindings 
#~ for all the variables used by the block. 
#~ You already know that blocks can use local variables and method arguments that are defined outside the block. 
#~ In the following code, for example, the block associated with the collect iterator uses the method argument n: 
# multiply each element of the data array by n
def multiply(data, n)
  data.collect {|x| x*n }
end
p multiply([1,2,3], 2)   # Prints 2,4,6

#~ What is more interesting, and possibly even surprising, is that if the block were turned into a proc or lambda, 
#~ it could access n even after the method to which it is an argument had returned. The following code demonstrates: 
# Return a lambda that retains or "closes over" the argument n
def multiplier(n) 
  lambda {|data| data.collect{|x| x*n } }
end
doubler = multiplier(2)     # Get a lambda that knows how to double
p doubler.call([1,2,3])  # Prints 2,4,6

#~ The multiplier method returns a lambda. Because this lambda is used outside of the scope in which it is defined, 
#~ we call it a closure; it encapsulates or "closes over" (or just retains) the binding for the method argument n. 


