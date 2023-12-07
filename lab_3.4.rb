def calculate_series_1(x, epsilon)
	result = 0
	n = 2
 
	loop do
	  term = (factorial(n - 1) / (factorial(n + 1)**n * factorial(n + 1))) * (x - 1)**(2 * n)
	  break if term.abs < epsilon
 
	  result += term
	  n += 1
	end
 
	return result
 end
 
 def calculate_series_2(x, epsilon)
	result = 0
	n = 0
 
	loop do
	  term = ((x - 1)**(2 * n + 1) / ((2 * n + 1) * (x + 1)**(2 * n + 1)))
	  break if term.abs < epsilon
 
	  result += term
	  n += 1
	end
 
	return result
 end
 
 # Функція для обчислення факторіалу
 def factorial(n)
	n > 1 ? n * factorial(n - 1) : 1
 end
 
 # Задане значення x та точність epsilon
 x_value = 2.0
 epsilon_value = 0.00001
 
 # Обчислення значень рядів
 result_series_1 = calculate_series_1(x_value, epsilon_value)
 result_series_2 = calculate_series_2(x_value, epsilon_value)
 
 # Обчислення значення ln(x)
 result_ln = Math.log(x_value)
 
 # Виведення результатів
 puts "Значення, обчислене за першим рядом: #{result_series_1}"
 puts "Значення, обчислене за другим рядом: #{result_series_2}"
 puts "Значення, обчислене за ln(x): #{result_ln}"
 