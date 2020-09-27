struct Box {
    typealias Space = Int
    var space1: Space = 0
    var space2: Space = 0
    var space3: Space = 0
    var space4: Space = 0
    var space5: Space = 0
    var space6: Space = 0
    var space7: Space = 0
    var space8: Space = 0
    var space9: Space = 0
    
    init(space1: Space, space2: Space, space3: Space, space4: Space, space5: Space, space6: Space, space7: Space, space8: Space, space9: Space) {
        self.space1 = space1
        self.space2 = space2
        self.space3 = space3
        self.space4 = space4
        self.space5 = space5
        self.space6 = space6
        self.space7 = space7
        self.space8 = space8
        self.space9 = space9
    }
    
    
    func BoxSpaceArray() -> [Space] {
        return [space1, space2, space3, space4, space5, space6, space7, space8, space9]
    }
}

public struct Board {
    public var box1 = Box()
    public var box2 = Box()
    public var box3 = Box()
    public var box4 = Box()
    public var box5 = Box()
    public var box6 = Box()
    public var box7 = Box()
    public var box8 = Box()
    public var box9 = Box()
}
