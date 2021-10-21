# 2つの二進数文字列aとbが与えられた場合、
# それらの合計を二進数文字列として返します。
# Input: a = "1010", b = "1011"
# Output: "10101"

def add_binary(a, b)
    return (a.to_i(2) + b.to_i(2)).to_s(2)
  end
  
  puts add_binary("1010","1011")

  <