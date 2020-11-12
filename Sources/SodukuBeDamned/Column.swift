//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    func Col1() -> [Box.Space] {
        let colA = [boxState[BoxNames.box1]!.space1,boxState[BoxNames.box1]!.space4,boxState[BoxNames.box1]!.space7]
        let colB = [boxState[BoxNames.box4]!.space1,boxState[BoxNames.box4]!.space4,boxState[BoxNames.box4]!.space9]
        let colC = [boxState[BoxNames.box7]!.space1,boxState[BoxNames.box4]!.space4,boxState[BoxNames.box4]!.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col2() -> [Box.Space] {
        let colA = [boxState[BoxNames.box1]!.space2,boxState[BoxNames.box1]!.space5,boxState[BoxNames.box1]!.space8]
        let colB = [boxState[BoxNames.box4]!.space2,boxState[BoxNames.box4]!.space5,boxState[BoxNames.box4]!.space8]
        let colC = [boxState[BoxNames.box7]!.space2,boxState[BoxNames.box7]!.space5,boxState[BoxNames.box7]!.space8]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col3() -> [Box.Space] {
        let colA = [boxState[BoxNames.box1]!.space3,boxState[BoxNames.box1]!.space6,boxState[BoxNames.box1]!.space9]
        let colB = [boxState[BoxNames.box4]!.space3,boxState[BoxNames.box4]!.space6,boxState[BoxNames.box4]!.space9]
        let colC = [boxState[BoxNames.box7]!.space3,boxState[BoxNames.box7]!.space6,boxState[BoxNames.box7]!.space9]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    func Col4() -> [Box.Space] {
        let colA = [boxState[BoxNames.box2]!.space1,boxState[BoxNames.box2]!.space4,boxState[BoxNames.box2]!.space7]
        let colB = [boxState[BoxNames.box5]!.space1,boxState[BoxNames.box5]!.space4,boxState[BoxNames.box5]!.space7]
        let colC = [boxState[BoxNames.box8]!.space1,boxState[BoxNames.box8]!.space4,boxState[BoxNames.box8]!.space7]
        
        var final = colA
        final.append(contentsOf: colB)
        final.append(contentsOf: colC)
        
        return final
    }
    
    var columns: [Cols:[Box.Space]] {
        
        return [Cols.col1: Col1(), Cols.col2: Col2(), Cols.col3: Col3(), Cols.col4: Col4()]
    }
    
}
