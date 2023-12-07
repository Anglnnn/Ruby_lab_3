def calculate_expression(x)
	if -4 < x && x <= 0
	  result = Math.exp(Math.log((x - 2).abs / (x**2 * Math.cos(x))) / 7)
	elsif 0 < x && x <= 12
	  result = 1 / (Math.exp(Math.log(Math.tan(x + 1 / Math.exp(x)) / (Math.sin(x)**2)) / 7 / 2))
	else
	  result = 1 / (1 + (x / (1 + (x / (x + 1)))))
	end
 
	return result
 end
 
 # Приклад виклику для x = 5
 x_value = 5
 result_if = calculate_expression(x_value)
 puts "Використання if: #{result_if}"
 