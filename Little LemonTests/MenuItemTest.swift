//
//  MenuItemTests.swift
//  Little LemonTests
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import XCTest
@testable import Little_Lemon

final class Menu_ItemTests: XCTestCase {


    func testMenuItemTitle() throws {
        let item = MenuItem(title: "test", ingredients: [], price: 0.0, menuCategory: .all, ordersCount: 0, popularity: 0.0, image: "test")
        
        XCTAssert(item.title == "test")
    }
    func testMenuItemIngredients() throws {
        let item = MenuItem(title: "test", ingredients: [.broccoli, .carrot], price: 0.0, menuCategory: .all, ordersCount: 0, popularity: 0.0, image: "test")
        
        XCTAssert(item.ingredients == [.broccoli, .carrot])
        
    }

}
