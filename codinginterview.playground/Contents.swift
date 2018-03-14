// Coding Question # 1
// Given an array of numbers, return whether any two sums to K.
// For example, given [10, 15, 3, 7] and K of 17, return true since 10 + 7 is 17.

func sumEqualsK(sampleArray: [Int], k: Int) -> Bool {
    var sum = 0
    var value = 0
    for i in 0..<sampleArray.count {
        for j in 1..<sampleArray.count {
            sum = sampleArray[i] + sampleArray[j]
            if sum == k {
                value = sum
            }
        }
    }
    print(value)
    return value == k
}

sumEqualsK(sampleArray: [10, 15, 3, 7], k: 17)

// Coding Question # 2
// Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i. Solve it without using division and in O(n) time.
// For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6]

func productOfNumbers(array: [Int]) -> [Int] {
    var arr: [Int] = []
    var product = 1
    for i in 0..<array.count {
        product = (product * array[i])
    }
    for j in 0..<array.count {
        arr.append(product / array[j])
    }
    
    return arr
}

productOfNumbers(array: [1, 2, 3, 4, 5])

// Coding Question # 3
//Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.
//
//For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.
//You can modify the input array in-place.

func findMissingInt(array: [Int]) {
    var value: Int = 0
    var newArr: [Int] = array.sorted()
    for i in 0..<newArr.count {
        for j in 1..<newArr.count {
            var difference = newArr[j] - newArr[i]
            if difference > 1 {
                value = difference
            }
        }
    }
    print(value)
    
}

findMissingInt(array: [3, 4, 0, 1])


