//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    func Row1() -> [Int] {
        let rowA = [box1.space1, box1.space2, box1.space3]
        let rowB = [box2.space1, box2.space2, box2.space3]
        let rowC = [box3.space1, box3.space2, box3.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row2() -> [Int] {
        let rowA = [box1.space4, box1.space5, box1.space6]
        let rowB = [box2.space4, box2.space5, box2.space6]
        let rowC = [box3.space4, box3.space5, box3.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row3() -> [Int] {
        let rowA = [box1.space7, box1.space8, box1.space9]
        let rowB = [box2.space7, box2.space8, box2.space9]
        let rowC = [box3.space7, box3.space8, box3.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
}
