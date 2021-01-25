import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(iSheetAlertsTests.allTests),
    ]
}
#endif
