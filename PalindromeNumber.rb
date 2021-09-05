# 整数xを指定すると、xが回文整数の場合にtrueを返します。
# 整数は、前方からの読みと後方から読みが同じ場合、回文です。
# 例えば、121は回文ですが、123は回文ではありません。
# Input: x = 121
# Output: true
# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121.
#              From right to left, it becomes 121-.
#              Therefore it is not a palindrome.

def is_palindrome(x)
    if X < 0
        return false
    end
    
    y = X
        reverse = 0
    while y > 0
        reverse = reverse * 10 + y % 10
        y /= 10
    end  
    
    x == reverse ? true : false
end    

puts is_palindrome(121)