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
