import XCTest
@testable import Tamagochi

class TamagotchiTest: XCTestCase {
    
    func testFeedingTamagotchi() {
        let tamagotchi = TamagotchiBuilder()
            .with(fullness: 0)
            .with(hungriness: 100)
            .build()
        
        tamagotchi.feed()
        
        XCTAssertEqual(1, tamagotchi.fullness)
        XCTAssertEqual(99, tamagotchi.hungriness)
    }
    
    func testPlayingTamagotchi() {
        let tamagotchi = TamagotchiBuilder()
            .with(happiness: 0)
            .with(tiredness: 100)
            .build()
        
        tamagotchi.play()
        
        XCTAssertEqual(1, tamagotchi.happiness)
        XCTAssertEqual(99, tamagotchi.tiredness)
    }

    func testTamagochiChangesWithTime() {
        let tamagotchi = TamagotchiBuilder()
            .with(happiness: 50)
            .with(tiredness: 50)
            .with(fullness: 50)
            .with(hungriness: 50)
            .build()
        
        tamagotchi.live()
        
        XCTAssertEqual(50, tamagotchi.happiness)
        XCTAssertEqual(49, tamagotchi.tiredness)
        XCTAssertEqual(49, tamagotchi.fullness)
        XCTAssertEqual(51, tamagotchi.hungriness)
    }
}

class Tamagotchi {
    
    var fullness = 0
    var hungriness = 100
    var happiness = 0
    var tiredness = 100
    
    func feed() {
        fullness += 1
        hungriness -= 1
    }
    
    func play() {
        happiness += 1
        tiredness -= 1
    }
    
    func live() {
        tiredness -= 1
        fullness -= 1
        hungriness -= 1
    }
}
