def letter_combinations(digits)
    if digits.length == 0
      return []
    end
    return search(0, "", digits)
  end
  
  def search(index, str, digits)
    phone = {
      "2" => "abc",
      "3" => "def",
      "4" => "ghi",
      "5" => "jkl",
      "6" => "mno",
      "7" => "pqrs",
      "8" => "tuv",
      "9" => "wxyz",
    }
    result = []
    if index == digits.length
      result.push(str)
    else
      letters = phone[digits[index]]
      letters.length.times do |i|
        result += search(index + 1, str + letters[i], digits)
      end
    end
    return result
  end
  
  require 'minitest/autorun'
  
  class LetterCombinationsOfaPhoneNumberTest < Minitest::Test
    def test_letter_combinations
      assert_equal ["ad","ae","af","bd","be","bf","cd","ce","cf"], letter_combinations("23")
      assert_equal [], letter_combinations("")
      assert_equal ["a","b","c"], letter_combinations("2")
    end
  end