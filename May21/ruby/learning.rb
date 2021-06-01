number = 10

if number < 10
    puts('Number is less than 10')
else
    puts('Number is greater than or equal to 10')    
end

# boolean values
is_correct = true
is_correct = false

# arrays 
colors = ['red', 'blue', 'green']

colors.each do |color|
    puts(color)
end

# whitespace array
courses = %w(DevOps AWS Azure)

courses.each do |course|
    puts(course)
end