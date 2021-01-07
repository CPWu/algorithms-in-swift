/*

Name of Algorithm: BubbleSort
Runtime
 - Average O(N^2)
 - Worst O(N^2)
Memory: O(1)
Description of Algorthm:
Example:

*/

import Foundation


func bubbleSort (arr: [Int]) -> [Int] {
    var array = arr
    
    for _ in 0..<array.count-1 {
        for j in 0..<array.count-1 {
            if(array[j] > array[j+1]) {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
        }
    }
    return array
}

func optimizedBubbleSort(arr: [Int]) -> [Int] {
    var array = arr

    for i in 0..<array.count-1  {
        for j in 1..<(array.count - i)  {
            if (array[j] < array[j-1]) {
                let temp = array[j-1]
                array[j-1] = array[j]
                array[j] = temp
            }
        }
    }
    return array
}


let unsortedArray = [5, 1, 4, 2, 8]

bubbleSort(arr: unsortedArray)

optimizedBubbleSort(arr: unsortedArray)
