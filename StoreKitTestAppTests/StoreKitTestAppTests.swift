import XCTest
import StoreKitTest

@testable import StoreKitTestApp

class StoreKitTestAppTests: XCTestCase {

    func testStoreKit() {

        let _ = try! SKTestSession(configurationFileNamed: "Configuration.storekit")
        
        let productIds = ["ID_1", "ID_2"]
        
        StoreKitProductsProvider().fetchProducts(identifiers: productIds)
    }

}
