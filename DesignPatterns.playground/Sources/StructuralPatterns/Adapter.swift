import Foundation

// MARK : Apapter Pattern (also known as Wrapper Pattern)

// MARK: These are existing legacy models and classes

struct SomeUIElement { }

struct JsonDataFormat { }

struct XMLDataFormat { }

class LegacyClient {
    let data: XMLDataFormat
    init(data: XMLDataFormat) {
        self.data = data
    }
}

// MARK: These are existing legacy third party framework

class ThirdPartySDK {
    func getGraph(input: JsonDataFormat) -> SomeUIElement { return SomeUIElement() }
}

// MARK: These are new classes that will enable interaction between legacy classes and legacy frameworks

class ThirdPartySDKAdapter {
    func getGenericGraph(xmlDataFormat: XMLDataFormat) -> SomeUIElement {
        let thirdPartySDK = ThirdPartySDK()
        let transformedData = transformXMLtoJSON(xmlDataFormat: xmlDataFormat)
        return thirdPartySDK.getGraph(input: transformedData)
    }
    private func transformXMLtoJSON(xmlDataFormat: XMLDataFormat) -> JsonDataFormat {
        return JsonDataFormat()
    }
}

extension LegacyClient {
    func showGraph() {
        let adapter = ThirdPartySDKAdapter()
        let graph = adapter.getGenericGraph(xmlDataFormat: self.data)
        // show graph
    }
}


