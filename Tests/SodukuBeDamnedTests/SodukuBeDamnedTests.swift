import XCTest
@testable import SodukuBeDamned

final class SodukuBeDamnedTests: XCTestCase {
    func testBoardSet() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var board = Board()
        board.box5.space4 = 5
        XCTAssertEqual(board.box5.space4, 5)
    }
    
    func testRow2() {
        var board = Board()
        board.box1.space4 = 4
        board.box2.space5 = 5
        board.box3.space6 = 6
        XCTAssertEqual(board.Row2, [4,0,0,0,5,0,0,0,6])
    }
    
    func testRow3() {
        var board = Board()
        board.box1.space7 = 7
        board.box2.space8 = 8
        board.box3.space9 = 9
        XCTAssertEqual(board.Row3, [7,0,0,0,8,0,0,0,9])
    }
    
    func testRow4() {
        var board = Board()
        board.box4.space1 = 1
        board.box5.space2 = 2
        board.box6.space3 = 3
        XCTAssertEqual(board.Row4, [1,0,0,0,2,0,0,0,3])
    }
    
    func testRow5() {
        var board = Board()
        board.box4.space4 = 4
        board.box5.space5 = 5
        board.box6.space6 = 6
        XCTAssertEqual(board.Row5, [4,0,0,0,5,0,0,0,6])
    }
    
    func testRow6() {
        var board = Board()
        board.box4.space7 = 7
        board.box5.space8 = 8
        board.box6.space9 = 9
        XCTAssertEqual(board.Row6, [7,0,0,0,8,0,0,0,9])
    }
    
    func testRow7() {
        var board = Board()
        board.box7.space1 = 1
        board.box8.space2 = 2
        board.box9.space3 = 3
        XCTAssertEqual(board.Row7, [1,0,0,0,2,0,0,0,3])
    }
    
    func testRow8() {
        var board = Board()
        board.box7.space4 = 4
        board.box8.space5 = 5
        board.box9.space6 = 6
        XCTAssertEqual(board.Row8, [4,0,0,0,5,0,0,0,6])
    }
    
    func testRow9() {
        var board = Board()
        board.box7.space7 = 7
        board.box8.space8 = 8
        board.box9.space9 = 9
        XCTAssertEqual(board.Row9, [7,0,0,0,8,0,0,0,9])
    }
    
    func testCol1() {
        var board = Board()
        board.box1.space1 = 1
        board.box4.space4 = 4
        board.box7.space7 = 7
        XCTAssertEqual(board.Col1(), [1,0,0,0,4,0,0,0,7])
    }
    
    func testCol2() {
        var board = Board()
        board.box1.space2 = 2
        board.box4.space5 = 5
        board.box7.space8 = 8
        XCTAssertEqual(board.Col2(), [2,0,0,0,5,0,0,0,8])
    }
    
    func testCol3() {
        var board = Board()
        board.box1.space3 = 3
        board.box4.space6 = 6
        board.box7.space9 = 9
        XCTAssertEqual(board.Col3(), [3,0,0,0,6,0,0,0,9])
    }
    
    func testCol4() {
        var board = Board()
        board.box2.space1 = 1
        board.box5.space4 = 4
        board.box8.space7 = 7
        XCTAssertEqual(board.Col4(), [1,0,0,0,4,0,0,0,7])
    }
    
    //test the Filling Row 1
    func testRowFill() {
        var board = Board()
        board.box1.space1 = 1
        board.box2.space2 = 4
        board.box3.space3 = 7
        board.fillRowOrCol(row: .row1, col: .noCol, box: .noBox)
        XCTAssertEqual(board.Row1, [1,2,3,5,4,6,8,9,7])
    }
    
    // test Filling Col 3; TODO need to set up for Col 3...right now only in place for Row 1; Test will fail
    func testColFill() {
        var board = Board()
        board.box1.space3 = 3
        board.box4.space6 = 6
        board.box7.space9 = 7
        board.fillRowOrCol(row: .noRow, col: .col3, box: .noBox)
        XCTAssertEqual(board.Col3(), [3,1,2,4,6,5,8,9,7])
    }
    
    // Fill row1 and col1 and then fill out box 1
    // TODO need to write out the fill code for Col 1; Right now not complete; Test will fail!
    func testBoxFill() {
        var board = Board()
        // Row 1
        board.box1.space1 = 2
        board.box2.space2 = 4
        board.box3.space3 = 7
        // fill/solve row 1 for the above initial values
        board.fillRowOrCol(row: .row1, col: .noCol, box: .noBox)
        
        // Col 1
        // space1 already filled above
        board.box4.space7 = 8
        board.box7.space7 = 9
        // fill/solve col 1 for the above initial values
        board.fillRowOrCol(row: .noRow, col: .col1, box: .noBox)
        
        // set row 1
        // row 1 is set to [2,0,0,0,4,0,0,0,7]
        // fill row 1 brings it to [2,1,3,5,4,6,8,9,7]
        
        // set col 1
        // col 1 is set to [2,0,0,0,0,8,0,0,9]
        // fill col 1 brings it to [2,1,3,4,5,8,6,7,9]
        
        // this makes box 1 currently [2,1,3,1,0,0,3,0,0]
        // this is an error; as there are two 1's selected in Box 1
        
        // need to update the fill function, for rows or columns, to consider the boxes it intersects 
        
//        let newBox = board.fillRowOrCol(board.box1.spaces)
//        board.updateBoard(data: newBox, box: 1)
//        // note need to write the function to update the Box1!!!!!!!!
//
        XCTAssertEqual(board[box: 0].spaces, [2,1,3,1,0,0,3,0,0])
    }
    


    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRow2", testRow2), ("testRow3", testRow3),
        ("testRow4", testRow4), ("testRow5", testRow5), ("testRow6", testRow6),
        ("testRow7", testRow7), ("testRow8", testRow8), ("testRow9", testRow9),
        ("testCol1", testCol1), ("testCol2", testCol2), ("testCol3", testCol3),
        ("testCol4", testCol4),
        ("testRowFill", testRowFill), ("testColFill", testColFill), ("textBoxFill", testBoxFill)
    ]
}
