public struct Box {
    public typealias Space = Int
    public var space1: Space
    public var space2: Space
    public var space3: Space
    public var space4: Space
    public var space5: Space
    public var space6: Space
    public var space7: Space
    public var space8: Space
    public var space9: Space
    
    public init(space1: Space = 0, space2: Space = 0, space3: Space = 0, space4: Space = 0, space5: Space = 0, space6: Space = 0, space7: Space = 0, space8: Space = 0, space9: Space = 0) {
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
    
    var boxes: [Box] {
        return [box1, box2, box3, box4, box5, box6, box7, box8, box9]
    }
    
    public subscript(box rowIndex: Int) -> Box {
        guard rowIndex >= 0 && rowIndex < 10 else {
            return Box()
        }
        
        return boxes[rowIndex]
    }
}
