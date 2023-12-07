def calculate_sum(x, n)
	sum = 0
	(1..n).each do |k|
	  sum += Rational(k, k + 1) * x**k
	end
	return sum
 end
 
 # Задані значення
 x_value = 2
 n_terms = 10
 
 # Обчислення суми
 result = calculate_sum(x_value, n_terms)
 
 puts "Сума виразу при x = #{x_value}: #{result.to_f}"
 