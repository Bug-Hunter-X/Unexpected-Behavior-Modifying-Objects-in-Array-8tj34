```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10
my_object.value = 20
puts my_object.value  # Output: 20

#The following code has a bug
my_array = [MyClass.new(1), MyClass.new(2), MyClass.new(3)]

#Attempting to modify the array in place will cause unexpected behavior in this case.
my_array.each do |obj|
  obj.value = obj.value * 2
end

puts my_array[0].value # Output: 2
puts my_array[1].value # Output: 4
puts my_array[2].value # Output: 6

#The bug is that each element in the array is a separate object, and there is no direct impact of changing a value of one object on another.
```