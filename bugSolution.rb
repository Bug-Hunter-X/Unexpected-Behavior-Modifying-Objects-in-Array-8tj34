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

# Corrected approach
my_array = [MyClass.new(1), MyClass.new(2), MyClass.new(3)]

my_array.each_with_index do |obj, index|
  my_array[index] = MyClass.new(obj.value * 2) 
  #Creates a new object with the updated value, replacing the old one in the array
end

puts my_array[0].value # Output: 2
puts my_array[1].value # Output: 4
puts my_array[2].value # Output: 6

#Alternative approach using map!
my_array = [MyClass.new(1), MyClass.new(2), MyClass.new(3)]
my_array.map! {|obj| MyClass.new(obj.value * 2)}

puts my_array[0].value # Output: 2
puts my_array[1].value # Output: 4
puts my_array[2].value # Output: 6
```