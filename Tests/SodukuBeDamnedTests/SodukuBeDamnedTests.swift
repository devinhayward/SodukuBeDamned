import XCTest
@testable import SodukuBeDamned

final class SodukuBeDamnedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var board = Board()
        board.box5.space4 = 5
        XCTAssertEqual(board[box: 4].space4, 5)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
