module InsertionSort

using Test
using Random

function insertion_sort!(array::Array{Int, 1})
    n = length(array)
    for i in 2:n
        key = array[i]
        j = i - 1
        while j > 0 && array[j] > key
            array[j + 1] = array[j]
            j -= 1
        end
        array[j + 1] = key
    end
    return array
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort
end
