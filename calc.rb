# This is a long way to write it, but it's extremely modular

puts "Calculator 1.0"

def print_menu
	puts "I'm a slightly more advanced calculator. "
	puts "+ : addition"
	puts "- : subtraction"
	puts "* : multiplication"
	puts "/ : division"
	puts "^2 : square"
	puts "^3 : cube"
	puts "^x : exponent"
	puts "root : square root of"
	puts " "
	print "Select an operation by typing one of the shortcuts (before the colon): "
end

def get_menu_input
	selection = gets.chomp
	return selection
end

def add (num1, num2)
	sum = num1 + num2
	return sum
end

def subt (num1, num2)
	diff = num1 - num2
	return diff
end

def mult (num1, num2)
	prod = num1 * num2
	return prod
end

def div (num1, num2)
	quot = num1 / num2
	return quot
end

def square (num1)
	sq = num1 ** 2
	return sq
end

def cube (num1)
	cb = num1 ** 3
	return cb
end

def exponent (num1, num2)
	exp = num1 ** num2
end

def root (num1)
	rt = num1 ** 0.5
end

def get_two_nums
	print "Enter the first number: "
	num1 = gets.chomp
	print "Enter the second number: "
	num2 = gets.chomp
	return num1.to_f, num2.to_f
end

def get_one_num
	print "Enter the number: "
	num = gets.chomp
	return num.to_f
end

print_menu
entry = get_menu_input

puts "You entered #{entry}. "

if entry == "+"
	puts "You're going to enter two numbers. I'm going to add them together."
	n1, n2 = get_two_nums
	output = add(n1,n2)

elsif entry == "-"
	puts "You're going to enter two numbers. I'm going to subtract the second one from the first."
	n1, n2 = get_two_nums
	output = subt(n1,n2)

elsif entry == "*"
	puts "You're going to enter two numbers. I'm going to multiply them together."
	n1, n2 = get_two_nums
	output = mult(n1,n2)

elsif entry == "/"
	puts "You're going to enter two numbers. I'm going to divide the first one by the second one."
	n1, n2 = get_two_nums
	output = div(n1,n2)

elsif entry == "^2"
	puts "You're going to enter one number. I'm going to square it."
	n1 = get_one_num
	output = square(n1)

elsif entry == "^3"
	puts "You're going to enter one number. I'm going to cube it."
	n1 = get_one_num
	output = cube(n1)

elsif entry == "^x"
	puts "You're going to enter two numbers. I'm going to raise the first  one to the power of the second one."
	n1, n2 = get_two_nums
	output = exponent(n1,n2)

elsif entry == "root"
	puts "You're going to enter one number. I'm going to give you the square root of it."
	n1 = get_one_num
	output = root(n1)

else
	puts "Invalid input. I don't have time to build you an input correcting loop. Next time please enter  +, -, * or / . Goodbye!"
end

puts output











