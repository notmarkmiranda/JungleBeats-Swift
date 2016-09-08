//
//  JungleBeatsTests.swift
//  JungleBeatsTests
//
//  Created by Mark Miranda on 9/7/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import XCTest
@testable import JungleBeats

class JungleBeatsTests: XCTestCase {
    
    func testNodeInitialization() {
        let newNode = Node(data: "first", next_node: nil)
        XCTAssertNotNil(newNode)
    }
    
}
