# Used recursion to return an array of all the possible combinations
# of an arbitrary number of arrays

# combos() takes an arbitrary number or arguments (each argument being an array)
# and returns one array containing arrays of each combination.
def combinations(*args)
  # initialize an array for the result
  array_new = []
  # combine the last two arguments (arrays)
  args[-2].each do |y|
    args[-1].each do |z|
      array_new.push(([y, z]).flatten)
    end
  end
  # get rid or last two arguments (arrays) that were combined above
  args.pop(2)
  # add the combined array (of last two elements) to args
  args.push(array_new)
  # if there are still more arguments to process call this function recursively
  if args.length > 1
    array_new = combinations(*args)
  end
  return array_new
end



# show function in action ...

# create sample data
team = ['Broncos', 'Patriots']
style = ['Short Sleeve T-Shirt', 'Long Sleve T-Shirt', 'Hoodie']
color = ['White', 'Gray', 'Black']
size = ['Small', 'Medium', 'Large']
whatever = ['a', 'b', 'c']

# call combo function with multiple arguments
combos(team, style, size, color, whatever).each do |a|
  p a
end

# show number of combinations
puts combos(team, style, size, color, whatever).length
