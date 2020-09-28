//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    //define the Rows
    
    
    
    //Check the Row
    
    
    
    //Check the Column
    
    
    
    //Check a box
    
    
    
    
    //Fill a row/col/box
    func fillRowOrCol(_ rowColOriginal: [Int]) -> [Int] {
        
        var rowToReturn = rowColOriginal
        var stack = [1,2,3,4,5,6,7,8,9]
        
        //remove from the stack all non-zero numbers in the original row
        //we need unique numbers only
        stack.removeAll(where: { rowToReturn.contains($0) })
        
        //loop through to find 0s and replace with next number off the stack
        for idx in 0..<9 {
            if rowColOriginal[idx] == 0 {
                rowToReturn[idx] = stack.removeFirst()
            }
        }
        
        return rowToReturn
    }
    
    // Mutating function to replace existing row/col/box with newly filled version
    // Need to be told which row/col/box -> default 0 and check for this
    mutating func updateBoard(row: Int = 0, col: Int = 0, box: Int = 0) {
        
        
        
        
    }
    
    
    
    
}
