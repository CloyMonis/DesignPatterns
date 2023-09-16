import Foundation

public class DataProcessor {
    public init() { }
    public func execute() {
        readFile()
        transformDataFrmFile()
        processData()
        presentData()
    }
    func readFile() { }
    func transformDataFrmFile() { }
    func processData() { print("Common Code to Process Data") }
    func presentData() { print("Common Code to Present Data") }
}

public class PDFDataProcessor: DataProcessor {
    
    override public init() { }
    
    override public func readFile() { print("Reading PDF File") }
    
    override public func transformDataFrmFile() { print("Transforming PDF File") }
    
}

public class DocDataProcessor: DataProcessor {
    
    override public init() { }
    
    override public func readFile() { print("Reading DOC File") }
    
    override public func transformDataFrmFile() { print("Transforming DOC File") }

}
