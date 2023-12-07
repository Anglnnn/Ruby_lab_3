# Задані значення змінних
a = 2.5
P = true

# Вираз ((ln(a) > a) або не P) і (sqrt(a) < a**4)
expression_result = (Math.log(a) > a || !P) && (Math.sqrt(a) < a**4)

puts "Результат виразу: #{expression_result}"
