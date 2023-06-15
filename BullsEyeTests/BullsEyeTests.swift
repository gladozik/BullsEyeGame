import XCTest
@testable import BullsEye
final class BullsEyeTests: BaseTest {
    
    func testScorePositiveParameter() throws {
        let guess = game.target + 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 5)
    }
    
    func testScoreNegativeParameter() throws {
        let guess = game.target - 5
        let score = game.calculatePoints(sliderValue: guess)
        XCTAssertEqual(score, 5)
    }
    
    func testNewRound() throws {
        game.startNewRound(points: 100)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
    func testGameRestart() throws {
        game.startNewRound(points: 100)
        XCTAssertNotEqual(game.score, 0)
        XCTAssertNotEqual(game.round, 1)
        game.restart()
        XCTAssertEqual(game.score, 0)
        XCTAssertEqual(game.round, 1)
    }
    
    

}
