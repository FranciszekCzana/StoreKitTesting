import XCTest
import StoreKitTest

class StoreKitTestAppUITests: XCTestCase {

    func testStoreKit() {

        let _ = try! SKTestSession(configurationFileNamed: "Configuration.storekit")
        let productIds = ["ID_1", "ID_2"]
        StoreKitProductsProvider().fetchProducts(identifiers: productIds)
    }
}
