import XCTest
@testable import Counter

final class CounterTests: XCTestCase {

    var counter: CounterModel!

    override func setUp() {
        super.setUp()
        counter = CounterModel()
    }

    override func tearDown() {
        counter = nil
        super.tearDown()
    }

    func testIncrement() {
        counter.increment()
        XCTAssertEqual(counter.count, 1, "Count should be 1 after one increment")
        
        counter.increment()
        XCTAssertEqual(counter.count, 2, "Count should be 2 after two increments")
    }

    func testReset() {
        counter.increment()
        XCTAssertEqual(counter.count, 1, "Count should be 1 after increment")
        
        counter.reset()
        XCTAssertEqual(counter.count, 0, "Count should be 0 after reset")
    }
}
