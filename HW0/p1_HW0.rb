#p1_HW0_CS169.1x

#Define a method sum which takes an array of integers as an argument 
#and returns the sum of its elements. For an empty array it should return zero.

def sum(array)
	array.reduce(0, :+) 
end

#Define a method max_2_sum which takes an array of integers as an argument 
#and returns the sum of its two largest elements. For an empty array it should return zero. 
#For an array with just one element, it should return that element.

def max_2_sum(array)
	if array.empty?
		0
	elsif array.length == 1
		array.pop
	else
		largest = array.sort.pop(2)
		largest[0] + largest[1]
	end
end

#Define a method sum_to_n? which takes an array of integers 
#and an additional integer, n, as arguments and returns true 
#if any two distinct elements in the array of integers sum to n. 
#An empty array or single element array should both return false.

def sum_to_n?(array, n)
	combinations = array.combination(2).to_a
	summed = combinations.map{|subarray| subarray.reduce(:+) }
	compare = summed.map{|a| a == n }
	compare.include?(true) ? true : false
end

