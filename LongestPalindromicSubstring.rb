# 文字列sが与えられた場合、sで最も長い回文部分文字列を返します。
# Input: s = "babad"
# Output: "bab"
# Note: "aba" is also a valid answer.

def longest_palindrome(s)
    left = 0
    right = 0
    for i in 0...s.length do
      odd = length_from_center(s, i, i)
      even = length_from_center(s, i, i + 1)
      longest = [odd, even].max
      if longest > right - left
        left = i - (longest - 1) / 2
        right = i + longest / 2
      end
    end
    return s[left..right]
  end
  
  def length_from_center(s, lfc, rfc)
    while lfc >= 0 && rfc < s.length && s[lfc] == s[rfc]
      lfc -= 1
      rfc += 1
    end
    return rfc - lfc - 1
  end
  
  p longest_palindrome("babad")