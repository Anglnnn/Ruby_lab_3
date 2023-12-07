# Введення значення c від користувача
print "Введіть значення c: "
c = gets.chomp.to_f

# Задані константи
N = 1
PI = 3.141

# 1) Протабулювати функцію у на відрізку [1, N] з кількістю участків (N+c)
puts "Табуляція функції у:"
(N + c).to_i.times do |i|
  x = 1 + i * (N / (N + c))
  y = (Math.exp(Math.log(x) * 4) - Math.exp(Math.log(1 / x) * 4))**(-N) + ((x + 1) / (x**2 - 4 * x + 3 * N)) + ((Math.exp(Math.log(36 * x * N) * 4)) / ((x + c * N + 1) / (x + 5)))
  puts "x = #{x}, y = #{y}"
end

# 2) Протабулювати функцію z на відрізку [π/N, π] з кількістю участків (3/2)N + c
puts "Табуляція функції z:"
((3 / 2) * N + c).to_i.times do |i|
  x = PI / N + i * (PI / ((3 / 2) * N + c))
  z = ((Math.tan(2 * x) * Math.cos(2 * x)**(-1) - Math.tan(2 * c + x) * Math.cos(2 * x)**(-2)) / (Math.cos(2 * x)**(-1) + Math.cos(3 * x)**(-2))) + ((1 + Math.exp(Math.log(Math.cos(N * x)) * c)) / (2 * x + Math.sin(3 * x)**2))
  puts "x = #{x}, z = #{z}"
end

# 3) Протабулювати функцію f = у + z на відрізку [2, c] з кількістю участків 2N
puts "Табуляція функції f:"
(2 * N).times do |i|
  x = 2 + i * (c - 2) / (2 * N)
  if 2 < x && x < N
    f = ((Math.exp(Math.log(x) * 4) - Math.exp(Math.log(1 / x) * 4))**(-N) + ((x + 1) / (x**2 - 4 * x + 3 * N)) + ((Math.exp(Math.log(36 * x * N) * 4)) / ((x + c * N + 1) / (x + 5))))
  elsif N < x && x < 2 * N
    f = ((Math.tan(2 * x) * Math.cos(2 * x)**(-1) - Math.tan(2 * c + x) * Math.cos(2 * x)**(-2)) / (Math.cos(2 * x)**(-1) + Math.cos(3 * x)**(-2))) + ((1 + Math.exp(Math.log(Math.cos(N * x)) * c)) / (2 * x + Math.sin(3 * x)**2))
  else
    f = 0 # Для інших значень x
  end
  puts "x = #{x}, f = #{f}"
end
