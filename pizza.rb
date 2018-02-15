def how_many()
	input = gets.chomp.to_i
end

def crust()
	result=["stuffed","thin","pan","deep dish","cheesy"].sample
end
def sauce()
	result=["house sauce","classic","extra thick","lite sauce"].sample
end
def cheese()
	result=["cheddar","mozzarella","feta","provalone"].sample
end
def meat_topping()
	result=["steak","pepperoni","chicken","bacon","ham"].sample
end
def veggi_topping()
	result=["peppers","onions","olives","mushrooms","tomatoes","spinach"].sample
end
def specials()
	result=["banana peppers","pineapple","cheese sause","garlic sauce","extra cheese","double pepperoni"].sample
end
def size(size)
	size_cost = 0
	if size == "small"
		p = 5.00
	elsif size == "medium"
		p = 10.00
	elsif size == "large"
		p = 15.00
	else 
		p "you did it wrong"
	end
	#return p

end

def pizza()
	p crust
	p sauce
	p cheese
	p meat_topping
	p veggi_topping
	p specials
end

counter = 1

print "How many pizza's would you like?"
input = how_many()

subtotal = 0

while counter <= input do
	print "What size would you like?"
	size_of_pizza = gets.chomp
	price = size(size_of_pizza)
	puts price
	pizza
	subtotal = subtotal + price
	counter = counter + 1
end

tax = subtotal * 0.06
delivery = input * 2
total = subtotal + tax + delivery


puts "Subtotal: $#{sprintf("%.02f",subtotal)}"
puts "Delivery: $#{sprintf("%.02f",delivery)}"
puts "tax: $#{sprintf("%.02f",tax)}"
puts "TOTAL: $#{sprintf("%.02f",total)}"

