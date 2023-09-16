import Foundation

// MARK: These are older classes
class LegacyOne {
    private let someValue = 10
}

class LegacyTwo {
    private let someValueTwo = 15
}

class LegacyThree {
    private let someValueThree = 20
}

// MARK: These are new classes

protocol ComponentAcceptVisitor {
    func accept(visitor: Visitor)
    func getValue() -> Int
}

protocol Visitor {
    func visit(legacyOne: LegacyOne)
    func visit(legacyTwo: LegacyTwo)
    func visit(legacyThree: LegacyThree)
}

public class VisitorImpl: Visitor {
    
    var someValue = 0
    var legacyComponents: [ComponentAcceptVisitor] = [ComponentAcceptVisitor]()
    
    public init() { }
    
    public func execute() {
        legacyComponents.append(LegacyOne())
        legacyComponents.append(LegacyTwo())
        legacyComponents.append(LegacyThree())
        for eachComponent in legacyComponents {
            eachComponent.accept(visitor: self)
        }
        print("VisitorImpl executions done result is \(someValue)")
    }
    
    func visit(legacyOne: LegacyOne) {
        print("Legacy One Visited")
        someValue = someValue + legacyOne.getValue()
    }
    
    func visit(legacyTwo: LegacyTwo) {
        print("Legacy Two Visited")
        someValue = someValue + legacyTwo.getValue()
    }
    
    func visit(legacyThree: LegacyThree) {
        print("Legacy Three Visited")
        someValue = someValue + legacyThree.getValue()
    }
    
}

// MARK: These are modifications done to existing classes

extension LegacyOne: ComponentAcceptVisitor {
    
    func accept(visitor: Visitor) {
        visitor.visit(legacyOne: self)
    }
    
    func getValue() -> Int {
        return someValue
    }
    
}

extension LegacyTwo: ComponentAcceptVisitor {
    
    func accept(visitor: Visitor) {
        visitor.visit(legacyTwo: self)
    }
    
    func getValue() -> Int {
        return someValueTwo
    }
    
}


extension LegacyThree: ComponentAcceptVisitor {
    
    func accept(visitor: Visitor) {
        visitor.visit(legacyThree: self)
    }
    
    func getValue() -> Int {
        return someValueThree
    }
}
