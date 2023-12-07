def nested_sqrt(n)
	result = 0
 
	n.times do
	  result = Math.sqrt(2 + result)
	end
 
	return result
 end
 
 # Задане значення n
 n_value = 5  
 
 # Обчислення виразу
 result = nested_sqrt(n_value)
 
 puts "Результат виразу при n = #{n_value}: #{result}"
 