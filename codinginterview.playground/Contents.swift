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

//Given a list of integers, write a function that returns the largest sum of non-adjacent numbers. Numbers can be 0 or negative.
//For example, [2, 4, 6, 8] should return 12, since we pick 4 and 8. [5, 1, 1, 5] should return 10, since we pick 5 and 5.

func nonAdjacentSum(array: [Int]) -> Int {
    var max = 0
    var sumArr: [Int] = []
    for i in 0..<array.count {
        for j in 2..<array.count {
            if i != j && j - i != 1  && j - i != -1{
                sumArr.append(array[i] + array[j])
            }
        }

    }
    if sumArr.count >= 1 {
        max = sumArr.max()!
    }
    print(sumArr)
    return max

}

nonAdjacentSum(array: [2, 4, 6, 8])

//Implement an autocomplete system. That is, given a query string s and a set of all possible query strings, return all strings in the set that have s as a prefix.
//For example, given the query string de and the set of strings [dog, deer, deal], return [deer, deal].
//Hint: Try preprocessing the dictionary into a more efficient data structure to speed up queries.

func queryStrings(letters: String) -> [String] {
    let arr = ["Bob", "Bill", "Cassandra"]
    var results: [String] = []
    for name in arr {
        for char in name {
            if letters.contains(char) {
                results.append(name)
            }
        }

    }
    print(results)
    return results
}

queryStrings(letters: "B")

