//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    func Col1() -> [Int] {
        let colA = [box1.space1, box1.space4, box1.space7]
        let colB = [box4.space1, box4.space4, box4.space7]
        let colC = [box7.space1, box7.space4, box7.space7]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col2() -> [Int] {
        let colA = [box1.space2, box1.space5, box1.space8]
        let colB = [box4.space2, box4.space5, box4.space8]
        let colC = [box7.space2, box7.space5, box7.space8]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col3() -> [Int] {
        let colA = [box1.space3, box1.space6, box1.space9]
        let colB = [box4.space3, box4.space6, box4.space9]
        let colC = [box7.space3, box7.space6, box7.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    
    
}
