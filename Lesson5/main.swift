//
//  main.swift
//  Lesson5
//
//  Created by Feniks on 14.07.2020.
//  Copyright © 2020 Feniks. All rights reserved.
//

enum runningEngine {
    case started, stoped
}

enum windowsOpen {
    case open, close
}

protocol Car {
    var model: String { get }
    var year: Int { get }
    var length: Int { get }
    var numberOfDoors: Int { get }
    var runningEngine: runningEngine { get set }
    var windowsOpen: windowsOpen { get set }
    
    mutating func openWindows()
    mutating func closeWindows()
    mutating func startCar()
    mutating func stopCar()
    
}

extension Car {
mutating func startCar () {
    runningEngine = .started
    }
}

extension Car {
mutating func stopCar () {
    runningEngine = .stoped
    }
}

extension Car {
mutating func openWindows () {
    windowsOpen = .open
    }
}

extension Car {
mutating func closeWindows () {
    windowsOpen = .close
    }
}

class TrunkCar: Car {
    var model: String
    var year: Int
    var length: Int
    var numberOfDoors: Int
    var runningEngine: runningEngine
    var windowsOpen: windowsOpen
    var bodyVolume: Int
    var grossBodyVolume: Int
    
    internal init(model: String, year: Int, length: Int, numberOfDoors: Int, runningEngine: runningEngine, windowsOpen: windowsOpen, bodyVolume: Int, grossBodyVolume: Int) {
        self.model = model
        self.year = year
        self.length = length
        self.numberOfDoors = numberOfDoors
        self.runningEngine = runningEngine
        self.windowsOpen = windowsOpen
        self.bodyVolume = bodyVolume
        self.grossBodyVolume = grossBodyVolume
    }
}

class SportCar: Car {
    var model: String
    var year: Int
    var length: Int
    var numberOfDoors: Int
    var runningEngine: runningEngine
    var windowsOpen: windowsOpen
    var turbineIsActive: Bool
    
    internal init(model: String, year: Int, length: Int, numberOfDoors: Int, runningEngine: runningEngine, windowsOpen: windowsOpen, turbineIsActive: Bool) {
        self.model = model
        self.year = year
        self.length = length
        self.numberOfDoors = numberOfDoors
        self.runningEngine = runningEngine
        self.windowsOpen = windowsOpen
        self.turbineIsActive = turbineIsActive
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Модель: \(model); Год выпуска: \(year); Длина: \(length) м; Количество дверей: \(numberOfDoors); Статус двигателя: \(runningEngine); Окна: \(windowsOpen); Объем кузова: \(bodyVolume) кг; Заполненный объем кузова: \(grossBodyVolume) кг"
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Модель: \(model); Год выпуска: \(year); Длина: \(length) м; Количество дверей: \(numberOfDoors); Статус двигателя: \(runningEngine); Окна: \(windowsOpen); Статус турбины: \(turbineIsActive)"
    }
}

var car2Sport = SportCar (model: "Jaguar", year: 2019, length: 4, numberOfDoors: 2, runningEngine: .started, windowsOpen: .open, turbineIsActive: false)

print(car2Sport)

car2Sport.closeWindows()

print(car2Sport)

var car1Trunk = TrunkCar (model: "MAN", year: 2005, length: 12, numberOfDoors: 4, runningEngine: .stoped, windowsOpen: .close, bodyVolume: 12000, grossBodyVolume: 0)

print(car1Trunk)

car1Trunk.startCar()

print(car1Trunk)

