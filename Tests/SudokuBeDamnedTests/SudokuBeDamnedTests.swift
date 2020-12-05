import XCTest
@testable import SudokuBeDamned

final class SudokuBeDamnedTests: XCTestCase {
    
    // define the common properties
    var board = Board()
    
    // set up a new blank board after every test
    override func tearDown() {
        
        board = Board()
    }
    
    func testBoardSet() {
        // Initial test to set up a single final value and check a single space; this is the syntax for checking a single space currently.
        
        let box5 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 5, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        
        board.boxState[Board.BoxNames.box5] = box5
        
        XCTAssertEqual(board.box5.space4.finalValue, 5)
    }
    
    
    // TODO: Combine all the Row testing into 1 test
    func testRows() {
        
        board.box1 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 4, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        board.box2 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 5, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        board.box3 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 6, sp7: 0, sp8: 0, sp9: 0)
        
        XCTAssertEqual(board.Row2.map({ space in
            return space.finalValue
        }), [4,0,0,0,5,0,0,0,6])
    }

    
    
    // test the rows Dictionary; really Rows should be used only where a Collection of rows is required. Implemented differently in this test
    // but still confirms that it is working.
    func testRows2() {
        board.box1 = Box(sp1: 1, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        board.box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 9, sp8: 0, sp9: 0)
        board.box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        board.box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        board.box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 9, sp8: 0, sp9: 0)
        board.box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        let row1 = board.rows[Board.Rows.row1]!.map { space in
            return space.finalValue
        }
        
        let row9 = board.rows[Board.Rows.row9]!.map { space in
            return space.finalValue
        }
        
        XCTAssertEqual(row1, [1,0,0,0,2,0,0,0,3])
        XCTAssertEqual(row9, [0,2,0,9,0,0,0,0,4])
        
        // test the updateRow function here for Row1 and Row9; is working here.
        board.updateRow(row: Board.Rows.row1)
        board.updateRow(row: Board.Rows.row9)
        let ans = board.box1.space2.availableValues
        let ans2 = board.box9.space8.availableValues
        XCTAssertTrue(ans.contains(5))
        XCTAssertTrue(ans2.contains(8))
    }

    func testColumnFunc() {
        board.box1 = Box(sp1: 9, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        board.box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 4, sp8: 0, sp9: 0)
        board.box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        board.box4 = Box(sp1: 2, sp2: 0, sp3: 6, sp4: 1, sp5: 9, sp6: 4, sp7: 8, sp8: 1, sp9: 1)
        board.box5 = Box(sp1: 3, sp2: 5, sp3: 9, sp4: 3, sp5: 1, sp6: 5, sp7: 2, sp8: 3, sp9: 2)
        board.box6 = Box(sp1: 4, sp2: 0, sp3: 2, sp4: 0, sp5: 3, sp6: 0, sp7: 1, sp8: 0, sp9: 7)
        
        board.box7 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 0)
        board.box8 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 5, sp5: 0, sp6: 8, sp7: 9, sp8: 9, sp9: 0)
        board.box9 = Box(sp1: 0, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 5)
        
       
        
        let col1 = board.columns[Board.Cols.col1]!.map { $0.finalValue }
        let col2 = board.columns[Board.Cols.col2]!.map { $0.finalValue }
        let col3 = board.columns[Board.Cols.col3]!.map { $0.finalValue }
        let col4 = board.columns[Board.Cols.col4]!.map { $0.finalValue }
        let col5 = board.columns[Board.Cols.col5]!.map { $0.finalValue }
        let col6 = board.columns[Board.Cols.col6]!.map { $0.finalValue }
        let col7 = board.columns[Board.Cols.col7]!.map { $0.finalValue }
        let col8 = board.columns[Board.Cols.col8]!.map { $0.finalValue }
        let col9 = board.columns[Board.Cols.col9]!.map { $0.finalValue }
        
        XCTAssertEqual(col1, [9,0,0,2,1,8,0,0,0])
        XCTAssertEqual(col2, [0,0,2,0,9,1,0,0,0])
        XCTAssertEqual(col3, [0,0,0,6,4,1,0,0,0])
        XCTAssertEqual(col4, [0,0,4,3,3,2,0,5,9])
        XCTAssertEqual(col5, [2,0,0,5,1,3,0,0,9])
        XCTAssertEqual(col6, [0,0,0,9,5,2,0,8,0])
        XCTAssertEqual(col7, [0,0,0,4,0,1,0,0,0])
        XCTAssertEqual(col8, [0,0,0,0,3,0,0,0,0])
        XCTAssertEqual(col9, [3,0,4,2,0,7,0,0,5])
        
        // also test the Column Update Function for Column 1
        board.updateColumn(col: Board.Cols.col1)
        let ans = board.box1.space2.availableValues
        XCTAssertTrue(ans.contains(3))
        
    }
    
    // test that the box/spaces model is working
    
    // TODO: Need to rewrite this test to deeper test the spaces model; and greater Box model as right now it is not mutating.
    func testSpaces() {
        board.box1 = Box(sp1: 1, sp2: 0, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 2, sp9: 0)
        board.box2 = Box(sp1: 0, sp2: 2, sp3: 0, sp4: 0, sp5: 0, sp6: 0, sp7: 4, sp8: 0, sp9: 0)
        board.box3 = Box(sp1: 0, sp2: 0, sp3: 3, sp4: 0, sp5: 0, sp6: 0, sp7: 0, sp8: 0, sp9: 4)
        
        
        board.boxState[Board.BoxNames.box1]!.space2.finalValue = 5
        let finalValues = board.boxState[Board.BoxNames.box1]!.spaces.map({ $0.finalValue })
        print(finalValues)
    }
    
    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRows", testRows), ("testRows2", testRows2),
        ("testColumnFunc", testColumnFunc), ("testSpaces", testSpaces)
    ]
}
