import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func calculatePoints(sliderValue: Int) -> Int {
        let calculatedScore = 10 - abs(target - sliderValue)
        
        //Считаем, что если отклоняемся больше чем на 10, то получаем 0
        return calculatedScore > 0 ? calculatedScore : 0
    }
    
    mutating func startNewRound(points: Int) {
        round += 1
        score += points
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        round = 1
        score = 0
        target = Int.random(in: 1...100)
    }
}
