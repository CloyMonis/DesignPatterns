import Foundation

// MARK: These are existing protocol

struct Employee {
    var id: String
    var name: String
}

struct Organization {
    var name: String
    var employees: [Employee]
}

// MARK: These are protocol implementations

struct OrganiztionIterator: IteratorProtocol {
    
    typealias Element = Employee
    private var currentIndex = 0
    private let employees: [Employee]
    
    init(employees: [Employee]) {
        self.employees = employees
    }
    
    mutating func next() -> Employee? {
        guard employees.count > currentIndex else {
            return nil
        }
        defer { currentIndex += 1 }
        return employees[currentIndex]
    }
    
}

extension Organization: Sequence {
    
    func makeIterator() -> OrganiztionIterator {
        return OrganiztionIterator(employees: employees)
    }
    
}

public class IteratorClient {
    
    public init() { }
    
    public func execute() {
        let allEmployees = [ Employee(id: "1", name: "Cloy"), Employee(id: "2", name: "Sanket"), Employee(id: "3", name: "Akshat"), Employee(id: "4", name: "Suraj"), Employee(id: "5", name: "Suyog")]
        let organization = Organization(name: "Medalist", employees: allEmployees)
        organization.forEach{ employee in
            print(" \(employee.id) \(employee.name) ")
        }
    }
    
}
