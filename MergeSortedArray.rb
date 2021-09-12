# 降順ではない順序でソートされた2つの整数配列nums1とnums2と、
# それぞれnums1とnums2の要素数を表す2つの整数mとnが与えられます。
# nums1とnums2を、降順ではない順序で並べ替えられた単一の配列にマージします。 
# 最終的にソートされた配列は、関数によって返されるのではなく、配列nums1内に格納されます。 
# これに対応するために、nums1の長さは m + n です。
# ここで、最初のm要素はマージする必要のある要素を示し、
# 最後のn要素は0に設定されているため、無視する必要があります。
# nums2の長さはnです。
# Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
# Output: [1,2,2,3,5,6]
# Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
#              The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.


def merge(nums1, m, nums2, n)
    while n > 0
        if n == 0 || nums1[m - 1] < nums2[n - 1]
            nums1[m + n - 1] = nums2[n - 1]
            n -= 1
        else 
            nums1[m + n - 1] = nums1[m - 1]
            m -= 1
        end       
    end    
    return nums1
end    

puts merge([1,2,3,0,0,0],3,[2,5,6],3)