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
    mutating func updateBoard(data: [Int], row: Int = 0, col: Int = 0, box: Int = 0) {
        
        // check if data is correct length
        guard data.count == 9 else {
            fatalError("A Row must be 9 integers my Bru!")
        }
        
        // Update the row in question
        if row != 0 {
            switch row {
            case 1:
                box1.space1 = data[0]
                box1.space2 = data[1]
                box1.space3 = data[2]
                box2.space1 = data[3]
                box2.space2 = data[4]
                box2.space3 = data[5]
                box3.space1 = data[6]
                box3.space2 = data[7]
                box3.space3 = data[8]
            case 2:
                box1.space4 = data[0]
                box1.space5 = data[1]
                box1.space6 = data[2]
                box2.space4 = data[3]
                box2.space5 = data[4]
                box2.space6 = data[5]
                box3.space4 = data[6]
                box3.space5 = data[7]
                box3.space6 = data[8]
            case 3:
                box1.space7 = data[0]
                box1.space8 = data[1]
                box1.space9 = data[2]
                box2.space7 = data[3]
                box2.space8 = data[4]
                box2.space9 = data[5]
                box3.space7 = data[6]
                box3.space8 = data[7]
                box3.space9 = data[8]
            case 4:
                box4.space1 = data[0]
                box4.space2 = data[1]
                box4.space3 = data[2]
                box5.space1 = data[3]
                box5.space2 = data[4]
                box5.space3 = data[5]
                box6.space1 = data[6]
                box6.space2 = data[7]
                box6.space3 = data[8]
            case 5:
                box4.space4 = data[0]
                box4.space5 = data[1]
                box4.space6 = data[2]
                box5.space4 = data[3]
                box5.space5 = data[4]
                box5.space6 = data[5]
                box6.space4 = data[6]
                box6.space5 = data[7]
                box6.space6 = data[8]
            case 6:
                box4.space7 = data[0]
                box4.space8 = data[1]
                box4.space9 = data[2]
                box5.space7 = data[3]
                box5.space8 = data[4]
                box5.space9 = data[5]
                box6.space7 = data[6]
                box6.space8 = data[7]
                box6.space9 = data[8]
            case 7:
                box7.space1 = data[0]
                box7.space2 = data[1]
                box7.space3 = data[2]
                box8.space1 = data[3]
                box8.space2 = data[4]
                box8.space3 = data[5]
                box9.space1 = data[6]
                box9.space2 = data[7]
                box9.space3 = data[8]
            case 8:
                box7.space4 = data[0]
                box7.space5 = data[1]
                box7.space6 = data[2]
                box8.space4 = data[3]
                box8.space5 = data[4]
                box8.space6 = data[5]
                box9.space4 = data[6]
                box9.space5 = data[7]
                box9.space6 = data[8]
            default:
                box7.space7 = data[0]
                box7.space8 = data[1]
                box7.space9 = data[2]
                box8.space7 = data[3]
                box8.space8 = data[4]
                box8.space9 = data[5]
                box9.space7 = data[6]
                box9.space8 = data[7]
                box9.space9 = data[8]
            }
        }
        
        // update the column in question
        if col != 0 {
            
            switch col {
            case 1:
                box1.space1 = data[0]
                box1.space4 = data[1]
                box1.space7 = data[2]
                box4.space1 = data[3]
                box4.space4 = data[4]
                box4.space7 = data[5]
                box7.space1 = data[6]
                box7.space4 = data[7]
                box7.space7 = data[8]
            case 2:
                box1.space2 = data[0]
                box1.space5 = data[1]
                box1.space8 = data[2]
                box4.space2 = data[3]
                box4.space5 = data[4]
                box4.space8 = data[5]
                box7.space2 = data[6]
                box7.space5 = data[7]
                box7.space8 = data[8]
            case 3:
                box1.space3 = data[0]
                box1.space6 = data[1]
                box1.space9 = data[2]
                box4.space3 = data[3]
                box4.space6 = data[4]
                box4.space9 = data[5]
                box7.space3 = data[6]
                box7.space6 = data[7]
                box7.space9 = data[8]
            case 4:
                box2.space1 = data[0]
                box2.space4 = data[1]
                box2.space7 = data[2]
                box5.space1 = data[3]
                box5.space4 = data[4]
                box5.space7 = data[5]
                box8.space1 = data[6]
                box8.space4 = data[7]
                box8.space7 = data[8]
            default:
                box3.space3 = data[0]
                box3.space6 = data[1]
                box3.space9 = data[2]
                box6.space3 = data[3]
                box6.space6 = data[4]
                box6.space9 = data[5]
                box9.space3 = data[6]
                box9.space6 = data[7]
                box9.space9 = data[8]
            }
            
            // TODO: the rest of the column and all Box cases
        }
        
        
    }
    
    
    
    
}
