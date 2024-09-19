module InsertionSort

using Test
using Random

function insertion_sort!(array::Array{Int, 1}) where Int
    # Insert your code here
    n = length(arr)
    for i in 2:n
        key = arr[i]
        j = i-1
        where j > 0 && arr[j] > key
        arr[j+1] = arr[j]
        j -=1
    end
    arr[j+1] = key
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort
end
