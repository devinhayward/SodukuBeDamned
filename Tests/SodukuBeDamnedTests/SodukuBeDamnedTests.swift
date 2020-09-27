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
    
    

    static var allTests = [
        ("testBoardSet", testBoardSet), ("testRow2", testRow2), ("testRow3", testRow3)
    ]
}
