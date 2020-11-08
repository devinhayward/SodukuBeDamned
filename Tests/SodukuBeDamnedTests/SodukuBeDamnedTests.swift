import XCTest
@testable import SodukuBeDamned

final class SodukuBeDamnedTests: XCTestCase {
    func testBoardSet() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        var box5 = Box()
        box5.space4.finalValue = 5
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:box5, Board.BoxNames.box6:Box(), Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.boxState[Board.BoxNames.box5]!.space4.finalValue, 5)
    }
    
    func testRow2() {
        var box1 = Box()
        var box2 = Box()
        var box3 = Box()
        
        box1.space4.finalValue = 4
        box2.space5.finalValue = 5
        box3.space6.finalValue = 6
        
        let dmhInitialState = [Board.BoxNames.box1:box1, Board.BoxNames.box2:box2, Board.BoxNames.box3:box3, Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        
        let board = Board(initialBoard: dmhInitialState)
        print(board.Row2.map({$0.finalValue}))
        
        XCTAssertEqual(board.Row2.map({ space in
            return space.finalValue
        }), [4,0,0,0,5,0,0,0,6])
    }

//    func testRow3() {
//        var board = Board()
//        board.box1.space7.currentValue = 7
//        board.box2.space8.currentValue = 8
//        board.box3.space9.currentValue = 9
//        XCTAssertEqual(board.Row3, [7,0,0,0,8,0,0,0,9])
//    }
//
//    func testRow4() {
//        var board = Board()
//        board.box4.space1.currentValue = 1
//        board.box5.space2.currentValue = 2
//        board.box6.space3.currentValue = 3
//        XCTAssertEqual(board.Row4, [1,0,0,0,2,0,0,0,3])
//    }
//
//    func testRow5() {
//        var board = Board()
//        board.box4.space4.currentValue = 4
//        board.box5.space5.currentValue = 5
//        board.box6.space6.currentValue = 6
//        XCTAssertEqual(board.Row5, [4,0,0,0,5,0,0,0,6])
//    }
//
//    func testRow6() {
//        var board = Board()
//        board.box4.space7.currentValue = 7
//        board.box5.space8.currentValue = 8
//        board.box6.space9.currentValue = 9
//        XCTAssertEqual(board.Row6, [7,0,0,0,8,0,0,0,9])
//    }
//
//    func testRow7() {
//        var board = Board()
//        board.box7.space1.currentValue = 1
//        board.box8.space2.currentValue = 2
//        board.box9.space3.currentValue = 3
//        XCTAssertEqual(board.Row7, [1,0,0,0,2,0,0,0,3])
//    }
//
//    func testRow8() {
//        var board = Board()
//        board.box7.space4.currentValue = 4
//        board.box8.space5.currentValue = 5
//        board.box9.space6.currentValue = 6
//        XCTAssertEqual(board.Row8, [4,0,0,0,5,0,0,0,6])
//    }
//
//    func testRow9() {
//        var board = Board()
//        board.box7.space7.currentValue = 7
//        board.box8.space8.currentValue = 8
//        board.box9.space9.currentValue = 9
//        XCTAssertEqual(board.Row9, [7,0,0,0,8,0,0,0,9])
//    }
//
//    func testCol1() {
//        var board = Board()
//        board.box1.space1.currentValue = 1
//        board.box4.space4.currentValue = 4
//        board.box7.space7.currentValue = 7
//        XCTAssertEqual(board.Col1(), [1,0,0,0,4,0,0,0,7])
//    }
//
//    func testCol2() {
//        var board = Board()
//        board.box1.space2.currentValue = 2
//        board.box4.space5.currentValue = 5
//        board.box7.space8.currentValue = 8
//        XCTAssertEqual(board.Col2(), [2,0,0,0,5,0,0,0,8])
//    }
//
//    func testCol3() {
//        var board = Board()
//        board.box1.space3.currentValue = 3
//        board.box4.space6.currentValue = 6
//        board.box7.space9.currentValue = 9
//        XCTAssertEqual(board.Col3(), [3,0,0,0,6,0,0,0,9])
//    }
//
//    func testCol4() {
//        var board = Board()
//        board.box2.space1.currentValue = 1
//        board.box5.space4.currentValue = 4
//        board.box8.space7.currentValue = 7
//        XCTAssertEqual(board.Col4(), [1,0,0,0,4,0,0,0,7])
//    }

    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRow2", testRow2) //, ("testRow3", testRow3),
//        ("testRow4", testRow4), ("testRow5", testRow5), ("testRow6", testRow6),
//        ("testRow7", testRow7), ("testRow8", testRow8), ("testRow9", testRow9),
//        ("testCol1", testCol1), ("testCol2", testCol2), ("testCol3", testCol3),
//        ("testCol4", testCol4)
    ]
}
