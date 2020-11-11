public struct Box {
    
    public struct Space {
        var availableValues = [1,2,3,4,5,6,7,8,9]
        var remainingValues: [Int] = []
        var currentValue = 0
        var finalValue = 0
    }
    
    public var space1 = Space()
    public var space2 = Space()
    public var space3 = Space()
    public var space4 = Space()
    public var space5 = Space()
    public var space6 = Space()
    public var space7 = Space()
    public var space8 = Space()
    public var space9 = Space()
    
    public var spaces: [String: Space]
    
    // allow to initialize the box spaces with a set final value; also provide the spaces Dictionary to access these spaces with the correct Key
    public init(sp1: Int, sp2: Int, sp3: Int, sp4: Int, sp5: Int, sp6: Int, sp7: Int, sp8: Int, sp9: Int) {
        
        self.space1.finalValue = sp1
        self.space2.finalValue = sp2
        self.space3.finalValue = sp3
        self.space4.finalValue = sp4
        self.space5.finalValue = sp5
        self.space6.finalValue = sp6
        self.space7.finalValue = sp7
        self.space8.finalValue = sp8
        self.space9.finalValue = sp9
        
        self.spaces = ["space1": self.space1, "space2": self.space2, "space3": self.space3, "space4": self.space4, "space5": self.space5,
                       "space6": self.space6, "space7": self.space7, "space8": self.space8, "space9": self.space9]
    }
    
    // allow to initialize with a zero box
    public init() {
        self.space1 = Space()
        self.space2 = Space()
        self.space3 = Space()
        self.space4 = Space()
        self.space5 = Space()
        self.space6 = Space()
        self.space7 = Space()
        self.space8 = Space()
        self.space9 = Space()
        
        self.spaces = ["space1": self.space1, "space2": self.space2, "space3": self.space3, "space4": self.space4, "space5": self.space5,
                       "space6": self.space6, "space7": self.space7, "space8": self.space8, "space9": self.space9]
    }
}

public struct Board {
    
    // need to allow for the user to initialize the state of the board. We will lock this state in for the record and then copy over to the board state
    let initialState: [BoxNames: Box]
    
    // state for the board; a dictionary of boxes
    public var boxState: [BoxNames: Box]
    
    // DONE: write an init that puts everything into place. Need to feed it a dictionary representing the initial state of the board.
    public init(initialBoard: [BoxNames: Box]) {
        self.boxState = initialBoard
        self.initialState = initialBoard
    }
}

public extension Board {
    enum BoxNames: String {
        case box1, box2, box3, box4, box5, box6, box7, box8, box9
    }
    
    enum Rows: String {
        case row1, row2, row3, row4, row5, row6, row7, row8, row9
    }
    
    enum Cols: String {
        case col1, col2, col3, col4, col5, col6, col7, col8, col9
    }
    
    // reset to inital state; used when an invalid state is found elsewhere
    
    
}
