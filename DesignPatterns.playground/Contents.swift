import UIKit


// MARK : Behavioral Patterns

// MARK : Visitor
let visitor = VisitorImpl()
visitor.execute()

// MARK : Iterator
let iteratorClient = IteratorClient()
iteratorClient.execute()

// MARK : Template
let templatePdf: DataProcessor = PDFDataProcessor()
templatePdf.execute()
let templateDoc: DataProcessor = DocDataProcessor()
templateDoc.execute()

// MARK : Chain of Responsibility
let chainOfResponsibility = ChainOfResponsiblity()
chainOfResponsibility.execute()

let bridgeImplementation = BridgeImplementation()
bridgeImplementation.execute()
