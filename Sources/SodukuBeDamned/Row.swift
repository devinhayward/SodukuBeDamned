//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    var Row1: [Int] {
        let rowA = [box1.space1.currentValue, box1.space2.currentValue, box1.space3.currentValue]
        let rowB = [box2.space1.currentValue, box2.space2.currentValue, box2.space3.currentValue]
        let rowC = [box3.space1.currentValue, box3.space2.currentValue, box3.space3.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row2: [Int] {
        let rowA = [box1.space4.currentValue, box1.space5.currentValue, box1.space6.currentValue]
        let rowB = [box2.space4.currentValue, box2.space5.currentValue, box2.space6.currentValue]
        let rowC = [box3.space4.currentValue, box3.space5.currentValue, box3.space6.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row3: [Int] {
        let rowA = [box1.space7.currentValue, box1.space8.currentValue, box1.space9.currentValue]
        let rowB = [box2.space7.currentValue, box2.space8.currentValue, box2.space9.currentValue]
        let rowC = [box3.space7.currentValue, box3.space8.currentValue, box3.space9.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row4: [Int] {
        let rowA = [box4.space1.currentValue, box4.space2.currentValue, box4.space3.currentValue]
        let rowB = [box5.space1.currentValue, box5.space2.currentValue, box5.space3.currentValue]
        let rowC = [box6.space1.currentValue, box6.space2.currentValue, box6.space3.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row5: [Int] {
        let rowA = [box4.space4.currentValue, box4.space5.currentValue, box4.space6.currentValue]
        let rowB = [box5.space4.currentValue, box5.space5.currentValue, box5.space6.currentValue]
        let rowC = [box6.space4.currentValue, box6.space5.currentValue, box6.space6.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row6: [Int] {
        let rowA = [box4.space7.currentValue, box4.space8.currentValue, box4.space9.currentValue]
        let rowB = [box5.space7.currentValue, box5.space8.currentValue, box5.space9.currentValue]
        let rowC = [box6.space7.currentValue, box6.space8.currentValue, box6.space9.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row7: [Int] {
        let rowA = [box7.space1.currentValue, box7.space2.currentValue, box7.space3.currentValue]
        let rowB = [box8.space1.currentValue, box8.space2.currentValue, box8.space3.currentValue]
        let rowC = [box9.space1.currentValue, box9.space2.currentValue, box9.space3.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row8: [Int] {
        let rowA = [box7.space4.currentValue, box7.space5.currentValue, box7.space6.currentValue]
        let rowB = [box8.space4.currentValue, box8.space5.currentValue, box8.space6.currentValue]
        let rowC = [box9.space4.currentValue, box9.space5.currentValue, box9.space6.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row9: [Int] {
        let rowA = [box7.space7.currentValue, box7.space8.currentValue, box7.space9.currentValue]
        let rowB = [box8.space7.currentValue, box8.space8.currentValue, box8.space9.currentValue]
        let rowC = [box9.space7.currentValue, box9.space8.currentValue, box9.space9.currentValue]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
}
