import XCTest
@testable import iSheetAlerts

final class iSheetAlertsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(iSheetAlerts().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
