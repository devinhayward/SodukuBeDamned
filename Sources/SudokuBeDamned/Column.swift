//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    func Col1() -> [Box.Space] {
        let colA = [box1.space1, box1.space4, box1.space7]
        let colB = [box4.space1, box4.space4, box4.space7]
        let colC = [box7.space1, box7.space4, box7.space7]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    mutating func mCol1Remain(space: Int = 0, newArray: [Int] = []) {
        
        switch space {
        case 1:
            box1.space1.remainingValues.removeAll()
            if !newArray.isEmpty {
                box1.space1.remainingValues = newArray
            }
        case 2:
            box1.space4.remainingValues.removeAll()
            if !newArray.isEmpty {
                box1.space4.remainingValues = newArray
            }
        case 3:
            box1.space7.remainingValues.removeAll()
            if !newArray.isEmpty {
                box1.space7.remainingValues = newArray
            }
        case 4:
            box4.space1.remainingValues.removeAll()
            if !newArray.isEmpty {
                box4.space1.remainingValues = newArray
            }
        case 5:
            box4.space4.remainingValues.removeAll()
            if !newArray.isEmpty {
                box4.space4.remainingValues = newArray
            }
        case 6:
            box4.space7.remainingValues.removeAll()
            if !newArray.isEmpty {
                box4.space7.remainingValues = newArray
            }
        case 7:
            box7.space1.remainingValues.removeAll()
            if !newArray.isEmpty {
                box7.space1.remainingValues = newArray
            }
        case 8:
            box7.space4.remainingValues.removeAll()
            if !newArray.isEmpty {
                box7.space4.remainingValues = newArray
            }
        case 9:
            box7.space7.remainingValues.removeAll()
            if !newArray.isEmpty {
                box7.space7.remainingValues = newArray
            }
        default:
            print("Nothing")
        }
    }
    
    func Col2() -> [Box.Space] {
        let colA = [box1.space2, box1.space5, box1.space8]
        let colB = [box4.space2, box4.space5, box4.space8]
        let colC = [box7.space2, box7.space5, box7.space8]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col3() -> [Box.Space] {
        let colA = [box1.space3, box1.space6, box1.space9]
        let colB = [box4.space3, box4.space6, box4.space9]
        let colC = [box7.space3, box7.space6, box7.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col4() -> [Box.Space] {
        let colA = [box2.space1, box2.space4, box2.space7]
        let colB = [box5.space1, box5.space4, box5.space7]
        let colC = [box8.space1, box8.space4, box8.space7]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col5() -> [Box.Space] {
        let colA = [box2.space2, box2.space5, box2.space8]
        let colB = [box5.space2, box5.space5, box5.space8]
        let colC = [box8.space2, box8.space5, box8.space8]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col6() -> [Box.Space] {
        let colA = [box2.space3, box2.space6, box2.space9]
        let colB = [box5.space3, box5.space6, box5.space9]
        let colC = [box8.space3, box8.space6, box8.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col7() -> [Box.Space] {
        let colA = [box3.space1, box3.space4, box3.space7]
        let colB = [box6.space1, box6.space4, box6.space7]
        let colC = [box9.space1, box9.space4, box9.space7]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col8() -> [Box.Space] {
        let colA = [box3.space2, box3.space5, box3.space8]
        let colB = [box6.space2, box6.space5, box6.space8]
        let colC = [box9.space2, box9.space5, box9.space8]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col9() -> [Box.Space] {
        let colA = [box3.space3, box3.space6, box3.space9]
        let colB = [box6.space3, box6.space6, box6.space9]
        let colC = [box9.space3, box9.space6, box9.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    var columns: [Cols:[Box.Space]] {
        
        return [Cols.col1: Col1(), Cols.col2: Col2(), Cols.col3: Col3(), Cols.col4: Col4(), Cols.col5: Col5(), Cols.col6: Col6(), Cols.col7: Col7(), Cols.col8: Col8(), Cols.col9: Col9()]
    }
    
}
