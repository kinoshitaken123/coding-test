# あなたは階段を上っています。 
# 頂上に到達するにはn段あります。 
# 毎回、1段または2段登ることができます。 
# いくつの方法で頂上に登ることができますか？
# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
#              1. 1 step + 1 step + 1 step
#              2. 1 step + 2 steps
#              3. 2 steps + 1 step

# 0 1 1 2 3 5 8 13

def climb_stairs(n)
    num1 = 0
    num2 = 1
    for i in 0...n do
      num3 = num1 + num2
      num1 = num2
      num2 = num3
    end
    return num3
  end
  
  puts climb_stairs(3)