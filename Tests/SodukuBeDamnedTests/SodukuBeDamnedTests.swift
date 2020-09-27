import XCTest
@testable import SodukuBeDamned

final class SodukuBeDamnedTests: XCTestCase {
    func testBoardSet() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var board = Board()
        board.box5.space4 = 5
        XCTAssertEqual(board[box: 4].space4, 5)
    }
    
    func testRow2() {
        var board = Board()
        board.box1.space4 = 4
        board.box2.space5 = 5
        board.box3.space6 = 6
        XCTAssertEqual(board.Row2(), [4,0,0,0,5,0,0,0,6])
    }
    
    func testRow3() {
        var board = Board()
        board.box1.space7 = 7
        board.box2.space8 = 8
        board.box3.space9 = 9
        XCTAssertEqual(board.Row3(), [7,0,0,0,8,0,0,0,9])
    }
    
    func testRow4() {
        var board = Board()
        board.box4.space1 = 1
        board.box5.space2 = 2
        board.box6.space3 = 3
        XCTAssertEqual(board.Row4(), [1,0,0,0,2,0,0,0,3])
    }
    
    func testRow5() {
        var board = Board()
        board.box4.space4 = 4
        board.box5.space5 = 5
        board.box6.space6 = 6
        XCTAssertEqual(board.Row5(), [4,0,0,0,5,0,0,0,6])
    }
    
    func testRow6() {
        var board = Board()
        board.box4.space7 = 7
        board.box5.space8 = 8
        board.box6.space9 = 9
        XCTAssertEqual(board.Row6(), [7,0,0,0,8,0,0,0,9])
    }
    
    func testRow7() {
        var board = Board()
        board.box7.space1 = 1
        board.box8.space2 = 2
        board.box9.space3 = 3
        XCTAssertEqual(board.Row7(), [1,0,0,0,2,0,0,0,3])
    }
    

    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRow2", testRow2), ("testRow3", testRow3),
        ("testRow4", testRow4), ("testRow5", testRow5), ("testRow6", testRow6),
        ("testRow7", testRow7)
    ]
}
