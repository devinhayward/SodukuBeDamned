import XCTest
@testable import SodukuBeDamned

final class SodukuBeDamnedTests: XCTestCase {
    func testBoardSet() {
        // Initial test to set up a single final value and check a single space; this is the syntax for checking a single space currently.
        
        let box5 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 5, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:box5, Board.BoxNames.box6:Box(), Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.boxState[Board.BoxNames.box5]!.space4.finalValue, 5)
    }
    
    func testRow2() {
        let box1 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 4, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box2 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 5, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box3 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 6, sp7: 0, sp8: 0, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:box1, Board.BoxNames.box2:box2, Board.BoxNames.box3:box3, Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        
        let board = Board(initialBoard: dmhInitialState)
        //print(board.Row2.map({$0.finalValue}))
        
        XCTAssertEqual(board.Row2.map({ space in
            return space.finalValue
        }), [4,0,0,0,5,0,0,0,6])
    }

    func testRow3() {
        let box1 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 7, sp8: 0, sp9: 0)
        let box2 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 8, sp9: 0)
        let box3 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 9)
        
        let dmhInitialState = [Board.BoxNames.box1:box1, Board.BoxNames.box2:box2, Board.BoxNames.box3:box3, Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row3.map({ space in
            return space.finalValue
        }), [7,0,0,0,8,0,0,0,9])
    }

    func testRow4() {
        let box4 = Box(sp1: 1, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box5 = Box(sp1: 0, sp2: 5, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box6 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:box4,
                               Board.BoxNames.box5:box5, Board.BoxNames.box6:box6, Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row4.map({ space in
            return space.finalValue
        }), [1,0,0,0,5,0,0,0,3])
    }

    func testRow5() {
        let box4 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 4, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box5 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 8, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box6 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 2, sp7: 0, sp8: 0, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:box4,
                               Board.BoxNames.box5:box5, Board.BoxNames.box6:box6, Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row5.map({ space in
            return space.finalValue
        }), [4,0,0,0,8,0,0,0,2])
    }
    
    func testRow6() {
        let box4 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 7, sp8: 0, sp9: 0)
        let box5 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 1, sp9: 0)
        let box6 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 6, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:box4,
                               Board.BoxNames.box5:box5, Board.BoxNames.box6:box6, Board.BoxNames.box7:Box(), Board.BoxNames.box8:Box(), Board.BoxNames.box9:Box()]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row6.map({ space in
            return space.finalValue
        }), [7,0,0,0,1,0,0,6,0])
    }
    
    func testRow7() {
        let box7 = Box(sp1: 6, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box8 = Box(sp1: 0, sp2: 4, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box9 = Box(sp1: 0, sp2: 3, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:box7, Board.BoxNames.box8:box8, Board.BoxNames.box9:box9]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row7.map({ space in
            return space.finalValue
        }), [6,0,0,0,4,0,0,3,0])
    }

    func testRow8() {
        let box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 2, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 9, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 7, sp7: 0, sp8: 0, sp9: 0)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:box7, Board.BoxNames.box8:box8, Board.BoxNames.box9:box9]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row8.map({ space in
            return space.finalValue
        }), [0,2,0,9,0,0,0,0,7])
    }

    func testRow9() {
        let box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        let box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 9, sp8: 0, sp9: 0)
        let box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let dmhInitialState = [Board.BoxNames.box1:Box(), Board.BoxNames.box2:Box(), Board.BoxNames.box3:Box(), Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:box7, Board.BoxNames.box8:box8, Board.BoxNames.box9:box9]
        
        let board = Board(initialBoard: dmhInitialState)
        
        XCTAssertEqual(board.Row9.map({ space in
            return space.finalValue
        }), [0,2,0,9,0,0,0,0,4])
    }
    
    // test the rows Dictionary; really Rows should be used only where a Collection of rows is required. Implemented differently in this test
    // but still confirms that it is working.
    func testRows() {
        let box1 = Box(sp1: 1, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        let box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 9, sp8: 0, sp9: 0)
        let box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        let box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 9, sp8: 0, sp9: 0)
        let box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let dmhInitialState = [Board.BoxNames.box1:box1, Board.BoxNames.box2:box2, Board.BoxNames.box3:box3, Board.BoxNames.box4:Box(),
                               Board.BoxNames.box5:Box(), Board.BoxNames.box6:Box(), Board.BoxNames.box7:box7, Board.BoxNames.box8:box8, Board.BoxNames.box9:box9]
        
        let board = Board(initialBoard: dmhInitialState)
        
        let row1 = board.rows[Board.Rows.row1]!.map { space in
            return space.finalValue
        }
        
        let row9 = board.rows[Board.Rows.row9]!.map { space in
            return space.finalValue
        }
        
        XCTAssertEqual(row1, [1,0,0,0,2,0,0,0,3])
        XCTAssertEqual(row9, [0,2,0,9,0,0,0,0,4])
    }
    
    

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
        ("testBoardSet", testBoardSet), ("testRow2", testRow2), ("testRow3", testRow3),
        ("testRow4", testRow4), ("testRow5", testRow5), ("testRow6", testRow6),
        ("testRow7", testRow7), ("testRow8", testRow8), ("testRow9", testRow9), ("testRows", testRows)
//        ("testCol1", testCol1), ("testCol2", testCol2), ("testCol3", testCol3),
//        ("testCol4", testCol4)
    ]
}
