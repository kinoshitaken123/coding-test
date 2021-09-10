# 文字列の配列から最も長い共通の接頭語文字列を見つける関数を作成します。 
# 共通の接頭語がない場合は、空の文字列 "" を返します。
# Input: strs = ["flower","flow","flight"]
# Output: "fl"

def longest_common_prefix(strs)
    common = ""
    for i in 0...strs[0].length do
      s = strs[0][i]
      for j in 1...strs.length do
        if strs[j][i] != s
          return common
        end
      end
      common += s
    end
    return common
  end
  
  puts longest_common_prefix(["flower","flow","flaght"])