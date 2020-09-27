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
    
    func Row4() -> [Int] {
        let rowA = [box4.space1, box4.space2, box4.space3]
        let rowB = [box5.space1, box5.space2, box5.space3]
        let rowC = [box6.space1, box6.space2, box6.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row5() -> [Int] {
        let rowA = [box4.space4, box4.space5, box4.space6]
        let rowB = [box5.space4, box5.space5, box5.space6]
        let rowC = [box6.space4, box6.space5, box6.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row6() -> [Int] {
        let rowA = [box4.space7, box4.space8, box4.space9]
        let rowB = [box5.space7, box5.space8, box5.space9]
        let rowC = [box6.space7, box6.space8, box6.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row7() -> [Int] {
        let rowA = [box7.space1, box7.space2, box7.space3]
        let rowB = [box8.space1, box8.space2, box8.space3]
        let rowC = [box9.space1, box9.space2, box9.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row8() -> [Int] {
        let rowA = [box7.space4, box7.space5, box7.space6]
        let rowB = [box8.space4, box8.space5, box8.space6]
        let rowC = [box9.space4, box9.space5, box9.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    func Row9() -> [Int] {
        let rowA = [box7.space7, box7.space8, box7.space9]
        let rowB = [box8.space7, box8.space8, box8.space9]
        let rowC = [box9.space7, box9.space8, box9.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
}
