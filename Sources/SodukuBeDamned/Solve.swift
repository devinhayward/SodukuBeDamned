//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    // if an inital value is given, this is a permanent final value
    // must therefore copy over the finalValue to the initialValue
    // function to loop through all the boxes and copy any defined inital values
    // over to the final value property
    
    mutating func hello(board: Board) {
        
        for boardIdx in 0..<9 {
            for spaceIdx in 0..<9 {
                // grab the current value of the space
                var currentSpace = board[box: boardIdx].spaces[spaceIdx]
                // if there is a value; copy over to the finalValue property for that space
                if currentSpace.currentValue != 0 {
                    currentSpace.finalValue = currentSpace.currentValue
                }
            }
        }
    }
    
    
    //Check the Rows
    func rowCheck() -> Bool {
        // assume for now that not solved means on space is currently 0
        for row in rows {
            for space in row {
                if space.currentValue == 0 {
                    return false
                }
            }
        }
        
        return true
    }
    
    
    //Check the Columns
    func colCheck() {
        
    }
    
    
    //Check a box
    func checkBox(boxNum: Int) -> Bool {
        
        var checkSet: Set<Int> = []
        // loop through the numbers and determine if there are any doubles
        for num in self[box: boxNum].spaces {
            let result = checkSet.insert(num.currentValue)
            if result.inserted == false {
                return false
            }
        }
        return true
    }
    
    
    
    //Fill a row/col/box
    mutating func fillRowOrCol(row: Rows = .noRow, col: Cols = .noCol, box: Boxes = .noBox ) {
        
        // make sure only 1 item is chosen
        if row != .noRow && col != .noCol || box != .noBox {
            fatalError("you can only update one at a time")
        }
        
        // function to fill a row or col or box
        func fillBox(dataRow: [Int]) -> [Int] {
            var stack = [1,2,3,4,5,6,7,8,9]
            var rowToReturn = dataRow
            
            //remove from the stack all non-zero numbers in the original row
            //we need unique numbers only
            stack.removeAll(where: { rowToReturn.contains($0) })
            
            //loop through to find 0s and replace with next number off the stack
            for idx in 0..<9 {
                if dataRow[idx] == 0 {
                    rowToReturn[idx] = stack.removeFirst()
                }
            }
            return rowToReturn
        }
        
        // determine the item in question and check the related boxes to make sure they are valid
        if row == .row1 {
            // check box 1; 2 & 3
            if !checkBox(boxNum: 0) {
                // reset box1 to original state (which is checked elsewhere for validity)
                self.box1.space1 = self.initialState[0].space1
                self.box1.space2 = self.initialState[0].space2
                self.box1.space3 = self.initialState[0].space3
                self.box1.space4 = self.initialState[0].space4
                self.box1.space5 = self.initialState[0].space5
                self.box1.space6 = self.initialState[0].space6
                self.box1.space7 = self.initialState[0].space7
                self.box1.space8 = self.initialState[0].space8
                self.box1.space9 = self.initialState[0].space9
            }else if !checkBox(boxNum: 1) {
                
            }
            
            // fill row1
            let newRow = fillBox(dataRow: self.Row1)
            
            //mutate the state
            self.box1.space1.currentValue = newRow[0]
            self.box1.space2.currentValue = newRow[1]
            self.box1.space3.currentValue = newRow[2]
            self.box2.space1.currentValue = newRow[3]
            self.box2.space2.currentValue = newRow[4]
            self.box2.space3.currentValue = newRow[5]
            self.box3.space1.currentValue = newRow[6]
            self.box3.space2.currentValue = newRow[7]
            self.box3.space3.currentValue = newRow[8]
        }else if row == .row2 {
            
        }else if row == .row3 {
            
        }
        
    }
}
