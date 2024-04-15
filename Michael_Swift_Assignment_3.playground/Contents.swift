class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    // Initializer for Ship class
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship {
    let maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        // Call superclass initializer (Ship)
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Passenger added. Current count: \(currentPassengerCount)")
        } else {
            print("Ship is at max capacity. NO more passengers.")
        }
    }
    
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}

class CargoShip: Ship {
    let maxCargoCapacity: Double
    var currentCargoCount: Double = 0.0
    let isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Double, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.isInternational = isInternational
        // Call superclass initializer (Ship)
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // add cargo if not at max capacity
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1.0
            print("Cargo added. Current count: \(currentCargoCount)")
        } else {
            print("Ship is at max cargo capacity. NO more cargo.")
        }
    }
    
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}

class PirateShip: Ship {
    let maxTreasureCapacity: Int
    var currentTreasureCount: Int = 0
    let numberOfCannons: Int
    

    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
       
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    //add treasure if not at max capacity
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
            print("Treasure added. Current count: \(currentTreasureCount)")
        } else {
            print("Ship is at max treasure capacity. NO more treasure.")
        }
    }
    
    func printTreasureCount() {
        print("Current treasure count: \(currentTreasureCount)")
    }
}

//
let cruiseShip = CruiseShip(name: "Red October", year: 2005, countryOfOrigin: "RUS", maxCapacity: 1000, oceanOfOperation: "Pacific")


print("Ship Name: \(cruiseShip.name)")
print("Year: \(cruiseShip.year)")
print("Country of Origin: \(cruiseShip.countryOfOrigin)")
print("Max Passenger Capacity: \(cruiseShip.maxCapacity)")
print("Ocean of Operation: \(cruiseShip.oceanOfOperation)")

// Add passengers and print current count
cruiseShip.addPassenger()
cruiseShip.addPassenger()
cruiseShip.printPassengerCount()
