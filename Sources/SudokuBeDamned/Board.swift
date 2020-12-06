public struct Box {
    
    public struct Space {
        var availableValues = [1,2,3,4,5,6,7,8,9]
        var remainingValues: [Int] = []
        var currentValue = 0
        public var finalValue = 0
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
    
    public var spaces: [Space] //{
        //[space1, space2, space3, space4, space5, space6, space7, space8, space9]
    //}
    
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
        
        self.spaces = [self.space1, self.space2, self.space3, self.space4, self.space5, self.space6, self.space7, self.space8, self.space9]
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
        
        self.spaces = [self.space1, self.space2, self.space3, self.space4, self.space5, self.space6, self.space7, self.space8, self.space9]
    }
}

public struct Board {
    
    var box1: Box
    var box2: Box
    var box3: Box
    var box4: Box
    var box5: Box
    var box6: Box
    var box7: Box
    var box8: Box
    var box9: Box
    
    // blank init
    public init() {
        self.box1 = Box()
        self.box2 = Box()
        self.box3 = Box()
        self.box4 = Box()
        self.box5 = Box()
        self.box6 = Box()
        self.box7 = Box()
        self.box8 = Box()
        self.box9 = Box()
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
}
