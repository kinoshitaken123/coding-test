# n組の括弧が与えられた場合、整形式の括弧のすべての組み合わせを生成する関数を記述します。
# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]

# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n)
    result = []
    generate(result, "", 0,0,n)
    return result
end    

def generate(result,current,left_count,right_count,max)
    if left_count + right_count == max *2
        result.push(current)
    end    

    if left_count < max
        generate(result,current + "(", left_count +1, right_count, max)
    end    

    if right_count < left_count
        generate(result, current + ")", left_count, right_count +1, max)
    end
end    

require 'minitest/autorun'

class GenerateParenthesesTest < Minitest::Test
    def test_generate_parenthesis
        assert_equal ["((()))","(()())","(())()","()(())","()()()"], generate_parenthesis(3)
        assert_equal ["()"],generate_parenthesis(1)
    end     
end    
