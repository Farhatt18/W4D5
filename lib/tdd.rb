def my_uniq(arr)
    hash = arr.tally
    new_arr = hash.keys 
end

def two_sum(arr)
    pairs = []
    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1 && num1 + num2 == 0
                pairs << [idx1, idx2]
            end
        end
    end

    pairs
end