def myfilter(arr)
  m = []
  arr.each{|x|
    a = yield x if block_given?
    m << x if a
  }
  puts m
end
arr = [1, 2, 3, 9]
myfilter(arr) {|i| i>= 5}
