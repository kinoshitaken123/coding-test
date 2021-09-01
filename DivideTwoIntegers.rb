# 2つの整数の被除数と除数が与えられたとき、乗算、除算、mod演算子を使わずに2つの整数を割り算します。
# 被除数を除数で割った後、商を返します。 
# 整数の除算はゼロに向かって切り捨てる必要があります。
# これは、小数部分が失われることを意味します。 
# たとえば、truncate（8.345）= 8およびtruncate（-2.7335）=-2です。 
# 注：32ビットの符号付き整数の範囲[-2^31、2^31-1]内の整数のみを格納できる環境を扱っていると想定します。 
# この問題では、除算の結果がオーバーフローしたときに関数が2^31−1を返すと仮定します。
# Input: dividend = 10, divisor = 3
# Output: 3
# Explanation: 10/3 = truncate(3.33333..) = 3.

# @param {Integer} dividend・・・被除数
# @param {Integer} divisor・・・除数
# @return {Integer}

#正の数か負の数を確認する
def divide(dividend, divisor)
    max = 2 ** 31 - 1
    min = -1 * 2 ** 31
    negative = (dividend < 0) ^ (divisor < 0) ? true : false
    dividend = dividend.abs
    divisor = divisor.abs
    quotient = 0
    while dividend >= divisor
      temp1 = divisor
      temp2 = 1
      while dividend >= temp1
        dividend -= temp1
        quotient += temp2
        temp1 *= 2
        temp2 *= 2
      end
    end
    quotient = negative ? -1 * quotient : quotient
    return [max, [min, quotient].max].min
  end
  
  require 'minitest/autorun'
  
  class DivideTowIntegersTest < Minitest::Test
    def test_divide
      assert_equal 3, divide(10, 3)
      assert_equal -2, divide(7, -3)
      assert_equal 0, divide(0, 1)
      assert_equal 1, divide(1, 1)
      assert_equal 2**31 - 1, divide(-1 * 2**31, -1)
    end
  end