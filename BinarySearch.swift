//  BinarySearch.swift

//  Created by Val I on 2025-03-28.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.

//  This program generates an array of random integers, sorts it in numerical order,
//  and allows the user to search for a number using binary search.
//  The program displays the index of the number if found, or a message if not found.
//  The user can quit the program by entering "q".
//


import Foundation

// The size of the array to be populated
let ARRAYSIZE = 10

var arrayOfInts = Array(repeating: 0, count: ARRAYSIZE)
var search: String

repeat {
    // Populate the array with random numbers using a for loop
    for i in 0..<ARRAYSIZE {
        arrayOfInts[i] = Int.random(in: 1...100)
    }

    // Sort the array
    arrayOfInts.sort()

    // Print the sorted array
    print("Sorted array: \(arrayOfInts)")
    print("Enter a number to search for, or q to quit: ")

    // Get user input
    search = readLine()?.lowercased() ?? ""

    if search == "q" {
        break
    } else {
        if let searchInt = Int(search) {
            var low = 0
            var high = arrayOfInts.count - 1

            // Perform binary search
            while low <= high {
                let mid = (low + high) / 2
                if arrayOfInts[mid] == searchInt {
                    print("Number found at index: \(mid)")
                    break
                } else if arrayO
                fInts[mid] < searchInt {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }

            // If the number is not found
            if low > high {
                print("Number not found in the array.")
            }
        } else {
            print("Invalid input. Enter a valid number.")
        }
    }
} while search != "q"

// Print goodbye message
print("Goodbye!")