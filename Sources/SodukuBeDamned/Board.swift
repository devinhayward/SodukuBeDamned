public struct Box {
    
    public struct Space {
        var availableValues = [1,2,3,4,5,6,7,8,9]
        var remainingValues: [Int] = []
        var currentValue = 0
        var finalValue = 0
    }
    
    fileprivate var value = Space()

    public var space1: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space2: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space3: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space4: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space5: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space6: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space7: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space8: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    public var space9: Space {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
    
    var spaces: [Space] {
        return [space1, space2, space3, space4, space5, space6, space7, space8, space9]
    }
        
    public init(sp1: Int = 0, sp2: Int = 0, sp3: Int = 0, sp4: Int = 0, sp5: Int = 0,  sp6: Int = 0, sp7: Int = 0, sp8: Int = 0, sp9: Int = 0) {
        
        self.space1.finalValue = sp1
        self.space2.finalValue = sp2
        self.space3.finalValue = sp3
        self.space4.finalValue = sp4
        self.space5.finalValue = sp5
        self.space6.finalValue = sp6
        self.space7.finalValue = sp7
        self.space8.finalValue = sp8
        self.space9.finalValue = sp9
    }
    
    subscript(space spaceIndex: Int) -> Space {
        guard spaceIndex >= 0 && spaceIndex < 10 else {
            return Space()
        }
        
        switch spaceIndex {
            case 0:
                return self.space1
            case 1:
                return self.space2
            case 2:
                return self.space3
            case 3:
                return self.space4
            case 4:
                return self.space5
            case 6:
                return self.space6
            case 7:
                return self.space7
            case 8:
                return self.space8
            default:
                return self.space9
        }
    }
}

public struct Board {
    
    // state for the board; a dictionary of boxes; initialized as empty boxes
    var boxState: [BoxNames: Box] = [BoxNames.box1:Box(), BoxNames.box2:Box(), BoxNames.box3:Box(), BoxNames.box4:Box(), BoxNames.box5:Box(), BoxNames.box6:Box(), BoxNames.box7:Box(), BoxNames.box8:Box(), BoxNames.box9:Box()]
    
    // need to allow for the user to initialize the state of the board. We will lock this state in for the record and then copy over to the board state
    var initialState: [BoxNames: Box]
    
    // we are counting on the user to create the necessary 9 box board here
    mutating func initializeBoard(board: [BoxNames: Box]) {
        initialState = board
    }
}

public extension Board {
    enum BoxNames: String {
        case box1, box2, box3, box4, box5, box6, box7, box8, box9
    }
    
    enum Rows: Int {
        case noRow = 0
        case row1 = 1
        case row2, row3, row4, row5, row6, row7, row8, row9
    }
    
    enum Cols: Int {
        case noCol = 0
        case col1 = 1
        case col2, col3, col4, col5, col6, col7, col8, col9
    }
    
    // reset to inital state; used when an invalid state is found elsewhere
    
    
}
