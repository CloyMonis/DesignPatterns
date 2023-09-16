import Foundation

protocol TaskHandler {
    var nextHandler: TaskHandler? { set get }
    func process()
}

class Intern: TaskHandler {
    
    var nextHandler: TaskHandler?
    
    func process() {
        print("Intern handing task")
        nextHandler?.process()
    }
}

class Employeee: TaskHandler {
    
    var nextHandler: TaskHandler?
    
    func process() {
        print("Employeee handing task")
        nextHandler?.process()
    }
}

class Manager: TaskHandler {
    
    var nextHandler: TaskHandler?
    
    func process() {
        print("Manager completing task")
    }
}

public class ChainOfResponsiblity {
    
    public init() { }
    
    public func execute() {
        var handlerOne: TaskHandler = Intern()
        var handlerTwo: TaskHandler = Employeee()
        let handlerThree: TaskHandler = Manager()
        handlerOne.nextHandler = handlerTwo
        handlerTwo.nextHandler = handlerThree
        handlerOne.process()
    }
    
}
