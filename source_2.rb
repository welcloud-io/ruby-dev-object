# Ruby's objects are strictly encapsulated: their state can be accessed only through the methods they define.

class Point
end

p = Point.new

puts p.class       # => Point
puts p.is_a? Point # => true

class Point
  def initialize(x,y) # instance method, the initialize method is automatically made private
    @x, @y = x, y
  end
end

p = Point.new(0,0)

# Incorrect code!
class Point
  @x = 0   # Create instance variable @x and assign a default. WRONG!
  @y = 0   # Create instance variable @y and assign a default. WRONG!
  def initialize(x,y)
    @x, @y = x, y   # Now initialize previously created @x and @y.
  end
end

class Point
  def initialize(x,y)
    @x, @y = x, y
  end
  def to_s        # Return a String that represents this point
    "(#@x,#@y)"   # Just interpolate the instance variables into a string
  end
end

p = Point.new(1,2)   # Create a new Point object
puts p               # Displays "(1,2)"

# puts p.x # => Does not work


class Point
  
  def initialize(x,y)
    @x, @y = x, y
  end
  
  def x           # The accessor (or getter) method for @x
    @x
  end
  
  def y           # The accessor method for @y
    @y
  end
  
end

p = Point.new(1,2) 
puts p.x

# p.x=7 => does not work
puts p.x

class Point
  def initialize(x,y); @x, @y = x, y; end
  def x; @x; end       # The getter method for @x
  def y; @y; end       # The getter method for @y
  def x=(value)        # The setter method for @x
    @x = value
  end
  def y=(value)        # The setter method for @y
    @y = value
  end
  def test
    x = 2 # ne fait pas appel à x= mais crée une variable locale
    puts x
    puts @x
    puts self.x
  end
end

p = Point.new(1,1)
p.x = 0
p.y = 0

puts p.x
p.test

class Point # Garde le initialize de la classe au dessus
  attr_accessor :x, :y # Define accessor methods for our instance variables
end

p = Point.new(3, 4)

p.x = 2

puts p


class Point_2 
  attr_reader :x, :y # Define accessor methods for our instance variables
end

p = Point_2.new

# p.x = 2 # => ne fonctionne pas

class Point
  attr_reader :x, :y   # Define accessor methods for our instance variables
  def initialize(x,y)
    @x,@y = x, y
  end
  def +(other)         # Define + to do vector addition
    Point.new(@x + other.x, @y + other.y)
  end
  def -@               # Define unary minus to negate both coordinates
    Point.new(-@x, -@y)
  end
  def *(scalar)        # Define * to perform scalar multiplication
    Point.new(@x*scalar, @y*scalar)
  end
end


p1 = Point.new(2, 3)
p2 = Point.new(3, 4)
puts p1 + p2

# We don't care if the argument actually is a point, as long as it looks and behaves like a point. 
# This approach is sometimes called "duck typing," 
# after the adage "if it walks like a duck and quacks like a duck, it must be a duck."

p1 = Point.new(2, 3)
p2 = 1
# puts p1 + p2 # undefined method `x' for 1:Fixnum (NoMethodError)



class Point
  def +(other)
    raise TypeError, "Point argument expected" unless other.is_a? Point
    Point.new(@x + other.x, @y + other.y)
  end
end

p1 = Point.new(2, 3)
p2 = 1

# puts p1 + p2 # => Point argument expected (TypeError)

class Point
  def +(other)
    raise TypeError, "Point-like argument expected" unless
      other.respond_to? :x and other.respond_to? :y
    Point.new(@x + other.x, @y + other.y)
  end
end

# puts p1 + p2 # => Point-like argument expected (TypeError)

class Point
  def +(other)         # Assume that other looks like a Point
    Point.new(@x + other.x, @y + other.y)
  rescue               # If anything goes wrong above
    raise TypeError,   # Then raise our own exception
      "Point addition with an argument that does not quack like a Point!"
  end
end

# puts p1 + p2 # => Point addition with an argument that does not quack like a Point! (TypeError)

# puts 3*p1 # => in `*': Point can't be coerced into Fixnum (TypeError)

class Point
  def coerce(other)
    [self, other]
  end
end

puts 3*p1

class Point
  # Define [] method to allow a Point to look like an array or
  # a hash with keys :x and :y
  def [](index)
    case index
      when 0, -2 then @x         # Index 0 (or -2) is the X coordinate
      when 1, -1 then @y         # Index 1 (or -1) is the Y coordinate
      when :x, "x" then @x       # Hash keys as symbol or string for X
      when :y, "y" then @y       # Hash keys as symbol or string for Y
      else nil               # Arrays and hashes just return nil on bad indexes
    end
  end
end

puts p1[1]

# This iterator passes the X coordinate to the associated block, and then
# passes the Y coordinate, and then returns. It allows us to enumerate
# a point as if it were an array with two elements. This each method is
# required by the Enumerable module.
class Point
  def each
    yield @x
    yield @y
  end
end

# With this iterator defined, we can write code like this: 
p = Point.new(1,2)
p.each {|x| p x }   # Prints "12"


class Point
  include Enumerable
end

p p.all? {|x| x == 0 }
p p.map {|x| 2 }

#~ Here is an == method for Point: 
class Point
  def ==(o)               # Is self == o?
    if o.is_a? Point      # If o is a Point object
      @x==o.x && @y==o.y  # then compare the fields.
    elsif                 # If o is not a Point
      false               # then, by definition, self != o.
    end
  end
end

p1 = Point.new(2, 3)
p2 = Point.new(3, 4)
p p1 == p2

p2 = Point.new(2, 3)
p p1 == p2

a = "Ruby"       # One reference to one String object
b = c = "Ruby"   # Two references to another String object
puts a.equal?(b)      # false: a and b are different objects
puts b.equal?(c)      # true: b and c refer to the same object

#~ By convention, subclasses never override the equal? method. 
#~ Another way to determine if two objects are, in fact, the same object is to check their object_id: 
puts a.object_id == b.object_id   # Works like a.equal?(b)

a = "Ruby"
b = a

puts a.equal?(b)
puts a.object_id == b.object_id

a = "Ruby"    # One String object
b = "Ruby"    # A different String object with the same content
puts a.equal?(b)   # false: a and b do not refer to the same object
puts a == b        # true: but these two distinct objects have equal values

#~ Equality for Java Programmers
#~ If you are a Java programmer, you are used to using the == operator to test 
#~ if two objects are the same object, and you are used to using the equals method to 
#~ test whether two distinct objects have the same value. Ruby's convention is just about the opposite of Java's. 

# CONSTANTES
class Point
  def initialize(x,y)  # Initialize method
    @x,@y = x, y 
  end
  ORIGIN = Point.new(0,0)
  UNIT_X = Point.new(1,0)
  UNIT_Y = Point.new(0,1)
  # Rest of class definition goes here
end


puts Point::UNIT_X + Point::UNIT_Y   # => (1,1)


class Point
  class << self
    attr_accessor :n, :totalX, :totalY
  end
  # Initialize our class variables in the class definition itself
  @@n = 0              # How many points have been created
  @@totalX = 0         # The sum of all X coordinates
  @@totalY = 0         # The sum of all Y coordinates
  def initialize(x,y)  # Initialize method
    @x,@y = x, y       # Sets initial values for instance variables
    # Use the class variables in this instance method to collect data
    @@n += 1           # Keep track of how many Points have been created
    @@totalX += x      # Add these coordinates to the totals
    @@totalY += y
  end
  # A class method to report the data we collected
  def self.report
    # Here we use the class variables in a class method
    puts "Number of points created: #@@n"
    puts "Average X coordinate: #{@@totalX.to_f/@@n}"
    puts "Average Y coordinate: #{@@totalY.to_f/@@n}"
  end
end

p1 = Point.new(1,2)
p2 = Point.new(3,4)
p3 = Point.new(5,6)

puts Point.report
puts Point.totalX



class Point3D < Point    # Define class Point3D as a subclass of Point
end

p2 = Point.new(1,2)
p3 = Point3D.new(1,2)
p p2.to_s, p2.class   # prints "(1,2)Point"
p p3.to_s, p3.class   # prints "(1,2)Point3D"

#~ If you're a Java programmer, this may be surprising to you. 
#~ Java classes define special constructor methods for initialization, 
#~ and those methods are not inherited. In Ruby, initialize is an ordinary method and is inherited like any other.

# Greet the World
class WorldGreeter
  def greet                      # Display a greeting
    puts "#{greeting} #{who}"
  end
  def greeting                   # What greeting to use
    "Hello"
  end
  def who                        # Who to greet
    "World"
  end
end
# Greet the world in Spanish
class SpanishWorldGreeter < WorldGreeter
  def greeting                   # Override the greeting
    "Hola"
  end
end
# We call a method defined in WorldGreeter, which calls the overridden
# version of greeting in SpanishWorldGreeter, and prints "Hola World"
SpanishWorldGreeter.new.greet

# This class is abstract; it doesn't define greeting or who
# No special syntax is required: any class that invokes methods that are
# intended for a subclass to implement is abstract.
class AbstractGreeter_1
  def greet
    puts "#{greeting} #{who}"
  end
end
# A concrete subclass
class WorldGreeter_1 < AbstractGreeter_1
  def greeting; "Hello"; end
  def who; "World"; end
end
WorldGreeter_1.new.greet  # Displays "Hello World"


class Point3D < Point
  def initialize(x,y,z)
    # Pass our first two arguments along to the superclass initialize method
    super(x,y)
    # And deal with the third argument ourself
    @z = z;
  end
  def to_s
    "(#@x, #@y, #@z)"
  end
end

p = Point3D.new(1,2,3)
puts p

class A
  @@value = 1                   # A class variable
  def A.value; @@value; end     # An accessor method for it
end
p A.value                   # Display value of A's class variable
class B < A; @@value = 2; end   # Subclass alters shared class variable
p A.value                   # Superclass sees altered value
class C < A; @@value = 3; end   # Another alters shared variable again
p B.value                   # 1st subclass sees value from 2nd subclass






