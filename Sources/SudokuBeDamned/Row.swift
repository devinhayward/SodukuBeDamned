//
//  File.swift
//  
//
//  Created by Devin Hayward on 2020-09-27.
//

public extension Board {
    
    typealias Row = [Box.Space]
    
    var Row1: Row {
        let rowA = [boxState[BoxNames.box1]!.space1,boxState[BoxNames.box1]!.space2,boxState[BoxNames.box1]!.space3]
        let rowB = [boxState[BoxNames.box2]!.space1,boxState[BoxNames.box2]!.space2,boxState[BoxNames.box2]!.space3]
        let rowC = [boxState[BoxNames.box3]!.space1,boxState[BoxNames.box3]!.space2,boxState[BoxNames.box3]!.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row2: Row {
        let rowA = [boxState[BoxNames.box1]!.space4,boxState[BoxNames.box1]!.space5,boxState[BoxNames.box1]!.space6]
        let rowB = [boxState[BoxNames.box2]!.space4,boxState[BoxNames.box2]!.space5,boxState[BoxNames.box2]!.space6]
        let rowC = [boxState[BoxNames.box3]!.space4,boxState[BoxNames.box3]!.space5,boxState[BoxNames.box3]!.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row3: Row {
        let rowA = [boxState[BoxNames.box1]!.space7,boxState[BoxNames.box1]!.space8,boxState[BoxNames.box1]!.space9]
        let rowB = [boxState[BoxNames.box2]!.space7,boxState[BoxNames.box2]!.space8,boxState[BoxNames.box2]!.space9]
        let rowC = [boxState[BoxNames.box3]!.space7,boxState[BoxNames.box3]!.space8,boxState[BoxNames.box3]!.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row4: Row {
        let rowA = [boxState[BoxNames.box4]!.space1,boxState[BoxNames.box4]!.space2,boxState[BoxNames.box4]!.space3]
        let rowB = [boxState[BoxNames.box5]!.space1,boxState[BoxNames.box5]!.space2,boxState[BoxNames.box5]!.space3]
        let rowC = [boxState[BoxNames.box6]!.space1,boxState[BoxNames.box6]!.space2,boxState[BoxNames.box6]!.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row5: Row {
        let rowA = [boxState[BoxNames.box4]!.space4,boxState[BoxNames.box4]!.space5,boxState[BoxNames.box4]!.space6]
        let rowB = [boxState[BoxNames.box5]!.space4,boxState[BoxNames.box5]!.space5,boxState[BoxNames.box5]!.space6]
        let rowC = [boxState[BoxNames.box6]!.space4,boxState[BoxNames.box6]!.space5,boxState[BoxNames.box6]!.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row6: Row {
        let rowA = [boxState[BoxNames.box4]!.space7,boxState[BoxNames.box4]!.space8,boxState[BoxNames.box4]!.space9]
        let rowB = [boxState[BoxNames.box5]!.space7,boxState[BoxNames.box5]!.space8,boxState[BoxNames.box5]!.space9]
        let rowC = [boxState[BoxNames.box6]!.space7,boxState[BoxNames.box6]!.space8,boxState[BoxNames.box6]!.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row7: Row {
        let rowA = [boxState[BoxNames.box7]!.space1,boxState[BoxNames.box7]!.space2,boxState[BoxNames.box7]!.space3]
        let rowB = [boxState[BoxNames.box8]!.space1,boxState[BoxNames.box8]!.space2,boxState[BoxNames.box8]!.space3]
        let rowC = [boxState[BoxNames.box9]!.space1,boxState[BoxNames.box9]!.space2,boxState[BoxNames.box9]!.space3]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row8: Row {
        let rowA = [boxState[BoxNames.box7]!.space4,boxState[BoxNames.box7]!.space5,boxState[BoxNames.box7]!.space6]
        let rowB = [boxState[BoxNames.box8]!.space4,boxState[BoxNames.box8]!.space5,boxState[BoxNames.box8]!.space6]
        let rowC = [boxState[BoxNames.box9]!.space4,boxState[BoxNames.box9]!.space5,boxState[BoxNames.box9]!.space6]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var Row9: Row {
        let rowA = [boxState[BoxNames.box7]!.space7,boxState[BoxNames.box7]!.space8,boxState[BoxNames.box7]!.space9]
        let rowB = [boxState[BoxNames.box8]!.space7,boxState[BoxNames.box8]!.space8,boxState[BoxNames.box8]!.space9]
        let rowC = [boxState[BoxNames.box9]!.space7,boxState[BoxNames.box9]!.space8,boxState[BoxNames.box9]!.space9]
        
        var final = rowA
        final.append(contentsOf: rowB)
        final.append(contentsOf: rowC)
        
        return final
    }
    
    var rows: [Rows:Row] {
        return [Rows.row1:Row1, Rows.row2:Row2, Rows.row3:Row3, Rows.row4:Row4, Rows.row5:Row5, Rows.row6:Row6,
                Rows.row7:Row7, Rows.row8:Row8, Rows.row9:Row9]
    }
}
