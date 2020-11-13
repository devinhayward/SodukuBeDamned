import XCTest
@testable import SudokuBeDamned

final class SudokuBeDamnedTests: XCTestCase {
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

    func testColumnFunc() {
        let box1 = Box(sp1: 9, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        let box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 4, sp8: 0, sp9: 0)
        let box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let box4 = Box(sp1: 2, sp2: 0, sp3: 6, sp4: 1, sp5: 9, sp6: 4, sp7: 8, sp8: 1, sp9: 1)
        let box5 = Box(sp1: 3, sp2: 5, sp3: 9, sp4: 3, sp5: 1, sp6: 5, sp7: 2, sp8: 3, sp9: 2)
        let box6 = Box(sp1: 4, sp2: 0, sp3: 2, sp4: 0, sp5: 3, sp6: 0, sp7: 1, sp8: 0, sp9: 7)
        
        let box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        let box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 5, sp5: 0, sp6: 8, sp7: 9, sp8: 9, sp9: 0)
        let box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 5)
        
        let dmhInitialState = [Board.BoxNames.box1:box1, Board.BoxNames.box2:box2, Board.BoxNames.box3:box3,
                               Board.BoxNames.box4:box4,Board.BoxNames.box5:box5, Board.BoxNames.box6:box6, Board.BoxNames.box7:box7, Board.BoxNames.box8:box8, Board.BoxNames.box9:box9]
        
        let board = Board(initialBoard: dmhInitialState)
        
        let col1 = board.columns[Board.Cols.col1]!.map { $0.finalValue }
        let col2 = board.columns[Board.Cols.col2]!.map { $0.finalValue }
        let col3 = board.columns[Board.Cols.col3]!.map { $0.finalValue }
        let col4 = board.columns[Board.Cols.col4]!.map { $0.finalValue }
        //let col5 = board.columns[Board.Cols.col5]!.map { $0.finalValue }
        //let col6 = board.columns[Board.Cols.col6]!.map { $0.finalValue }
        //let col7 = board.columns[Board.Cols.col7]!.map { $0.finalValue }
        //let col8 = board.columns[Board.Cols.col8]!.map { $0.finalValue }
        //let col9 = board.columns[Board.Cols.col9]!.map { $0.finalValue }
        
        XCTAssertEqual(col1, [9,0,0,2,1,8,0,0,0])
        XCTAssertEqual(col2, [0,0,2,0,9,1,0,0,0])
        XCTAssertEqual(col3, [0,0,0,6,4,1,0,0,0])
        XCTAssertEqual(col4, [0,0,4,3,3,2,0,5,9])
        //XCTAssertEqual(col5, [0,0,0,9,1,3,0,0,0])
        //XCTAssertEqual(col6, [0,0,0,4,5,0,0,8,0])
        //XCTAssertEqual(col7, [0,4,0,8,2,1,0,9,0])
        //XCTAssertEqual(col8, [2,0,0,1,3,0,0,9,0])
        //XCTAssertEqual(col9, [0,0,4,1,2,7,0,0,5])
        
        // also test the Column Update Function for Column 1
        board.updateColumn(col: Board.Cols.col1)
        let ans = box1.space2.availableValues
        XCTAssertTrue(ans.contains(3))
        
    }
    
    // test that the spaces model is working
    func testSpaces() {
        let box1 = Box(sp1: 1, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        let box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 4, sp8: 0, sp9: 0)
        let box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let box1Spaces = [box1.space1.finalValue, box1.space2.finalValue, box1.space3.finalValue, box1.space4.finalValue, box1.space5.finalValue, box1.space6.finalValue, box1.space7.finalValue, box1.space8.finalValue, box1.space9.finalValue]
        let box2Spaces = [box2.space1.finalValue, box2.space2.finalValue, box2.space3.finalValue, box2.space4.finalValue, box2.space5.finalValue, box2.space6.finalValue, box2.space7.finalValue, box2.space8.finalValue, box2.space9.finalValue]
        let box3Spaces = [box3.space1.finalValue, box3.space2.finalValue, box3.space3.finalValue, box3.space4.finalValue, box3.space5.finalValue, box3.space6.finalValue, box3.space7.finalValue, box3.space8.finalValue, box3.space9.finalValue]
        
        XCTAssertEqual(box1Spaces, [1,0,0,0,0,0,0,2,0])
        XCTAssertEqual(box2Spaces, [0,2,0,0,0,0,4,0,0])
        XCTAssertEqual(box3Spaces, [0,0,3,0,0,0,0,0,4])
        
    }
    
    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRow2", testRow2), ("testRow3", testRow3),
        ("testRow4", testRow4), ("testRow5", testRow5), ("testRow6", testRow6),
        ("testRow7", testRow7), ("testRow8", testRow8), ("testRow9", testRow9), ("testRows", testRows),
        ("testColumnFunc", testColumnFunc), ("testSpaces", testSpaces)
    ]
}
