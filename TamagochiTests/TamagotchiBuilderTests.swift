import XCTest
@testable import Tamagochi

class TamagotchiBuilderTest: XCTestCase {
    
    func testBuildsTamagotchi() {
        let builder = TamagotchiBuilder()
        
        let tamagotchi = builder
            .with(fullness: 1)
            .with(hungriness: 2)
            .with(happiness: 3)
            .with(tiredness: 4)
            .build()
        
        XCTAssertEqual(1, tamagotchi.fullness)
        XCTAssertEqual(2, tamagotchi.hungriness)
        XCTAssertEqual(3, tamagotchi.happiness)
        XCTAssertEqual(4, tamagotchi.tiredness)
    }
}

class TamagotchiBuilder {
    
    var tamagotchi = Tamagotchi()
    
    func with(fullness: Int) -> TamagotchiBuilder {
        tamagotchi.fullness = fullness
        return self
    }
    
    func with(hungriness: Int) -> TamagotchiBuilder {
        tamagotchi.hungriness = hungriness
        return self
    }
    
    func with(happiness: Int) -> TamagotchiBuilder {
        tamagotchi.happiness = happiness
        return self
    }
    
    func with(tiredness: Int) -> TamagotchiBuilder {
        tamagotchi.tiredness = tiredness
        return self
    }
    
    func build() -> Tamagotchi {
        return tamagotchi
    }
}
