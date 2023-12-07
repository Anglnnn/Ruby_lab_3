# Задані значення логічних та числових змінних
A = true
B = false
C = true
X = 2
Y = 10
Z = -50

# a) ¬(A ∨ B) ∧ (A ∧ ¬B)
expression_a = !(A || B) && (A && !B)
puts "a) ¬(A ∨ B) ∧ (A ∧ ¬B): #{expression_a}"

# b) (Z ≠ Y) ≤ (6 ≥ Y) ∧ A ∨ B ∧ C ∧ X ≥ 1.5
expression_b = (Z != Y) <= (6 >= Y) && (A || B) && C && X >= 1.5
puts "b) (Z ≠ Y) ≤ (6 ≥ Y) ∧ A ∨ B ∧ C ∧ X ≥ 1.5: #{expression_b}"

# c) (8 – X * 2 ≤ Z) ∧ (X^2 <= Y^2) ∨ (Z ≥ 15)
expression_c = (8 - X * 2 <= Z) && (X**2 <= Y**2) || (Z >= 15)
puts "c) (8 – X * 2 ≤ Z) ∧ (X^2 <= Y^2) ∨ (Z ≥ 15): #{expression_c}"

# d) X > 0 ∧ Y < 0 ∨ Z ≥ (X*Y-Y/X)+(–Z)
expression_d = X > 0 && Y < 0 || Z >= (X * Y - Y / X) + (-Z)
puts "d) X > 0 ∧ Y < 0 ∨ Z ≥ (X*Y-Y/X)+(–Z): #{expression_d}"

# e) ¬(A ∨ B ∧ ¬(C ∨ (¬A ∨ B)))
expression_e = !(A || (B && !(C || (!A || B))))
puts "e) ¬(A ∨ B ∧ ¬(C ∨ (¬A ∨ B))): #{expression_e}"

# f) X^2 + Y^2 ≥ 1 ∧ X ≥ 0 ∧ Y ≥ 0
expression_f = X**2 + Y**2 >= 1 && X >= 0 && Y >= 0
puts "f) X^2 + Y^2 ≥ 1 ∧ X ≥ 0 ∧ Y ≥ 0: #{expression_f}"

# g) (A ∧ (C ∧ B <> B ∨ A) ∨ C) ∧ B
expression_g = (A && (C && B != B || A) || C) && B
puts "g) (A ∧ (C ∧ B <> B ∨ A) ∨ C) ∧ B: #{expression_g}"
