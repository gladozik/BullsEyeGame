import Foundation
import XCTest
@testable import BullsEye

class BaseTest: XCTestCase {
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }
}
