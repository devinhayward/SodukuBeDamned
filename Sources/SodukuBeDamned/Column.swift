//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    func Col1() -> [Int] {
        let colA = [box1.space1.currentValue, box1.space4.currentValue, box1.space7.currentValue]
        let colB = [box4.space1.currentValue, box4.space4.currentValue, box4.space7.currentValue]
        let colC = [box7.space1.currentValue, box7.space4.currentValue, box7.space7.currentValue]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col2() -> [Int] {
        let colA = [box1.space2.currentValue, box1.space5.currentValue, box1.space8.currentValue]
        let colB = [box4.space2.currentValue, box4.space5.currentValue, box4.space8.currentValue]
        let colC = [box7.space2.currentValue, box7.space5.currentValue, box7.space8.currentValue]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col3() -> [Int] {
        let colA = [box1.space3.currentValue, box1.space6.currentValue, box1.space9.currentValue]
        let colB = [box4.space3.currentValue, box4.space6.currentValue, box4.space9.currentValue]
        let colC = [box7.space3.currentValue, box7.space6.currentValue, box7.space9.currentValue]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col4() -> [Int] {
        let colA = [box2.space1.currentValue, box2.space4.currentValue, box2.space7.currentValue]
        let colB = [box5.space1.currentValue, box5.space4.currentValue, box5.space7.currentValue]
        let colC = [box8.space1.currentValue, box8.space4.currentValue, box8.space7.currentValue]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    
    
}
