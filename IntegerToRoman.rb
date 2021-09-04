# ローマ数字は、I、V、X、L、C、D、Mの7つの異なる記号で表されます。
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# たとえば、2はローマ数字でIIと表記され、2つだけが足し合わされます。 
# 12はXIIと書かれていますが、これは単にX+IIです。 
# 番号27はXXVIIと書かれています。これはXX+V+IIです。 
# ローマ数字は通常、左から右に最大から最小に書かれます。 
# ただし、4の数字はIIIIではありません。 代わりに、4番目の数字はIVと書かれています。 
# 1つは5の前にあるので、それを減算して4にします。 
# 同じ原則が、IXと書かれている9番にも当てはまります。
# 減算が使用される6つの例があります。
# IをV（5）とX（10）の前に配置して4と9を作成できます。
# XをL（50）とC（100）の前に配置して40と90を作成できます。
# CをD（500）とM（1000）の前に配置して、400と900を作成できます。
# 整数を指定して、ローマ数字に変換します。
# Input: num = 3
# Output: "III"

# @param {Integer} num
# @return {String}
def int_to_roman(num)
    integer = [1000, 900, 500, 400, 100,  90,  50,  40,  10,   9,   5,   4,   1]
    roman   = [ "M","CM", "D","CD", "C","XC", "L","XL", "X","IX", "V", "IV","I"]
    result  =  ""
    integer.length.times do |i|
        while num >= integer[i]
            result += roman[i]
            num    -= integer[i]
        end    
    end    
    return result
end    


require 'minitest/autorun'

class IntegerToRomanTest < Minitest::Test
  def test_int_to_roman
    assert_equal "III", int_to_roman(3)
    assert_equal "IV", int_to_roman(4)
    assert_equal "IX", int_to_roman(9)
    assert_equal "MCMXCIV", int_to_roman(1994)
  end
end
