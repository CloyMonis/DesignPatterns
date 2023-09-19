import Foundation

protocol Vehicle {
    func service()
    func drive()
}

class Driver {
    let vehicle: Vehicle
    init(vehicle: Vehicle) {
        self.vehicle = vehicle
    }
    func drive() {
        vehicle.drive()
    }
    func service() {
        vehicle.service()
    }
}

class Bike: Vehicle {
    func service() {
        print("service of bike")
    }
    func drive() {
        print("driving bike")
    }
}

class Car: Vehicle {
    func service() {
        print("service of car")
    }
    func drive() {
        print("driving car")
    }
}


public class BridgeImplementation {
    public init() { }
    public func execute() {
        let bike = Bike()
        let car = Car()
        let carDriver = Driver(vehicle: car)
        let bikeDriver = Driver(vehicle: bike)
        let allDrivers = [carDriver, bikeDriver]
        for eachDriver in allDrivers {
            eachDriver.service()
            eachDriver.drive()
        }
    }
}
