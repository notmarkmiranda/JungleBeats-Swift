//
//  JungleBeatsTests.swift
//  JungleBeatsTests
//
//  Created by Mark Miranda on 9/7/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import XCTest
@testable import JungleBeats

class NodeTests: XCTestCase {

    func test_node_can_store_data() {
        let node = Node(data: "plop")
        XCTAssertEqual(node.data, "plop")
    }
    
    func test_next_node_is_nil() {
        let node = Node(data: "plop")
        XCTAssertNil(node.next_node)
    }
    
}
