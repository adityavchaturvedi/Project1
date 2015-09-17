import XCTest
@testable import Project1

class GOLTests: XCTestCase {
    
    var states: [[Bool]] = [
        [false, false, true],
        [true, true, true],
        [false, true, true]
    ]
    
    var statesInfinite: [[Bool]] = [
        [false, true, false],
        [true, false, true],
        [false, true, false]
    ]

    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testGOL() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let nextStates: [[Bool]] = nextCellStates(self.states)
        let expected: [[Bool]] = [
            [false, false, true],
            [true, false, false],
            [true, false, true]
        ]
        XCTAssertEqual(expected, nextStates)
    }
    
    func testGOLInfinite() {
        // This function tests for the case when the given configuration produces
        // the same result in the next step.
        var nextStates: [[Bool]] = nextCellStates(self.statesInfinite)
        let expected: [[Bool]] = [
        [false, true, false],
        [true, false, true],
        [false, true, false]
        ]
        XCTAssertEqual(expected, nextStates)
        nextStates = nextCellStates(self.statesInfinite)
        XCTAssertEqual(expected, nextStates)
        nextStates = nextCellStates(self.statesInfinite)
        XCTAssertEqual(expected, nextStates)
        XCTAssertEqual(expected, nextStates)
        XCTAssertEqual(expected, nextStates)
        XCTAssertEqual(expected, nextStates)
        nextStates = nextCellStates(self.statesInfinite)
    }
}

class LRUCacheTests: XCTestCase {

    func testBasic() {
        let cache = LRUCache<Int, String>(capacity: 2)
        XCTAssertNil(cache.get(3))

        cache.set(3, v: "Hello")
        let s = cache.get(3)
        XCTAssertNotNil(s)
        XCTAssertEqual(s!, "Hello")
    }

    func testMiss() {
        let cache = LRUCache<Int, String>(capacity: 2)
        cache.set(3, v: "Hello")
        cache.set(2, v: "World!")
        cache.set(4, v: "Swift")
        XCTAssertNil(cache.get(3))
        XCTAssertEqual(cache.get(2)!, "World!")
    }
    
    func testMissComplex() {
        let cache = LRUCache<Int, String>(capacity: 3)
        cache.set(3, v: "Fransisco")
        cache.set(2, v: "Domingo")
        cache.set(3, v: "Carlos")
        cache.set(3, v: "Andres")
        cache.set(4, v: "D'Anconia")
        cache.set(3, v: "Sebastian")
        XCTAssertEqual(cache.get(3)!, "Sebastian")
        cache.set(7, v: "Of D'Anconia Copper")
        XCTAssertEqual(cache.get(3)!, "Sebastian")
        XCTAssertNil(cache.get(2))
        cache.set(27, v: "in Argentina")
        XCTAssertNotNil(cache.get(3))
        XCTAssertNil(cache.get(4))
        XCTAssertEqual(cache.get(27)!, "in Argentina")
    }
}
