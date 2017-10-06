
def numbers()
  a = 123
  a=  0123 # octal
  a = 0x123 # hex
  a,b,c = 1,2,3
  a = 0b111
  a = a ** a #^2
  -1/3 # is -1
  -1 % 3 # is 2

  3.to_s
  3.odd?
  3.lcm
  3.+
  3.class
  3.methods #=>
end

def symbols()
  a = :symbols
  a.to_s
  s = "s"
  s.intern # to symbol
end
def strings()
  puts "The sum 6+3 is #{6+3}"
  puts %Q/The sum 6+3 is #{6+3}/
  a = "Hello"
  a.empty?
  a.starts_with? "H"
  a.include?
  a.length
  a.to_f
  a.to_i
  a.split # [H, e, ...]
  a.upcase # HELLO
  a.downcase # hello
  a.capitalize # Hello
  a.clear # ""
  a.replace "hi" # hi
  a.chomp "l" # helo, removes last l
  a.chop # hell
  a.slice start=2, length=2 # returns ll
  a.sub "l", "k" # hekko
  a.gsub "l", "l" # heklo
end

def array()
  a = Array.new
  a = [6, 1, 5, 4]
  a[-1] # 4
  a.length
  a[2,3] # start num

  # add remove from end
  a.push
  a.pop

  # add remove from beginning
  a.unshift(10, 40)
  a.shift

  a = [1]
  b = [2]
  a = a+b
  a.reverse
  a.sort().shuffle

  index = 0
  names = Array.new
  while name = gets
    name.chomp!.upcase!
    names[index] = name
    index += 1
  end
  puts "The sorted array:"puts names.sort

  a = ["hi", "a"]
  a = a.map {|name| name.capitalize} # ["Hi", "A"]
  [1, 2, 3].reduce {|sum, i| sum + i}

  [1, 2, 3].reduce 0 do |sum, i|
  sum + i
end
end

# blocks
def fibUpTo(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1 if block_given?
    i1, i2 = i2, i1+i2
  end
end
fibUpTo(1000) { |f| print f, " " }

def range()
  a = 0..4
  a.to_a
  a.last # is 4
  a.last 2 # is [3, 4]

  a === 3 # true
  3 === a # false
  a === 8 #false

  b = "car"..."cat"
  b.include? "cas" # true
  b.cover? "casando" # true
end

def booleans()
  fa = false || nil
  fa = true and false # fa is false, and then true
end

def branch()
  if true
  elsif true
  else
  end
  puts "true" if true
end

def loop()
  while true
  end
  until false
  end
end

def hash()
  h = Hash.new(0)
  h = {'k=>' 2,
      'l' => 3 }

  list   = ["cake", "bake", "cookie", "car", "apple"]
  # Group by string length:
  groups = Hash.new {|h,k| h[k] = []}
  list.each {
    |v| groups[v.length] << v
  }
  groups

  # filter methods
  a.delete_if { |k, v| v =~ /[aeiou]/ }
  a.keep_if { |k, v| v =~ /[aeiou]/ }
end

def compar()
  3 <=> 2 # returns 1
  s1, s2 = "h", "h"
  s1==s2 # true   # call this on primitive types
  s1.equal? s2 # false   # call this on object types
  s1.object_id is the addr   # addr is 2n+1 for numbers
end

# LHS Gather, RHS SPLIT
def splat(*names) # var arg
  a, b, *c = [1, 9, 2, 3, 4]
  a, b, c = [1, 9, 2, 3, 4] # 3 and 4 lost
end
a = [1, 2, 3]
splat(*a)

=begin
  multiline comment
  "Hi #{name}" + "!" #=> "Hi Liam!"
=end
__FILE__ # filename
__LINE__ # line number

def lists()
  list = [1, 2, 3]
  list.size #=> 3
end
