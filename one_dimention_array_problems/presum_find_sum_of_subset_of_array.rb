def main(input_arr, query)
    presum_arr = calculate_presum(input_arr)
    puts subset_sum(input_arr, presum_arr, query)
end

def calculate_presum(arr)
    presum = [arr[0]]
    (1..arr.size-1).each do |i|
        presum << (arr[i] + presum[i-1])
    end
    presum 
end

def subset_sum(arr, presum, query)
    s= query[0]
    e= query[1]
    presum[e] - presum[s] + arr[s]
end

in_arr = [8,9,6,1,5,4,2]
query = [1,6]
main(in_arr, query)