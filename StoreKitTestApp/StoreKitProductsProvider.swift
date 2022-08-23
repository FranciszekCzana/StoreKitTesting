//
//  StoreKitProductsProvider.swift
//  StoreKitTestAppUITests
//
//  Created by Franciszek Czana on 23/08/2022.
//

import Foundation
import StoreKit

public class StoreKitProductsProvider: NSObject {
    
    public override init() {}
    
    public func fetchProducts(identifiers: [String]) {
        
        let request = SKProductsRequest(productIdentifiers: Set(identifiers))
        request.delegate = self
        request.start()
        
        Thread.sleep(forTimeInterval: 2.0)
    }
}

extension StoreKitProductsProvider: SKProductsRequestDelegate {
    
    public func productsRequest(
        _: SKProductsRequest,
        didReceive response: SKProductsResponse) {
        print("PRODUCTS COUNT: \(response.products.count)")
        print("INVALID COUNT: \(response.invalidProductIdentifiers.count)")
    }
    
    public func request(
        _: SKRequest,
        didFailWithError error: Error) {
        print("ERROR: \(error)")
    }
}

