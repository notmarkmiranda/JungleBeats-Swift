//
//  LinkedListTest.swift
//  JungleBeats
//
//  Created by Mark Miranda on 2/19/17.
//  Copyright © 2017 Mark Miranda. All rights reserved.
//

import XCTest
@testable import JungleBeats

class LinkedListTest: XCTestCase {
    
    func test_linked_list_head_is_nil() {
        let list = LinkedList()
        XCTAssertNil(list.head)
    }
    
    func test_list_can_append() {
        let list = LinkedList()
        XCTAssertEqual(list.append(data: "doop"), "doop")
        XCTAssertEqual(list.head?.data, "doop")
        XCTAssertNil(list.head?.next_node)
    }
    
    func test_list_can_count() {
        let list = LinkedList()
        XCTAssertEqual(list.count(), 0)
        list.append(data: "doop")
        XCTAssertEqual(list.count(), 1)
    }
    
    func test_list_can_to_string() {
        let list = LinkedList()
        list.append(data: "doop")
        XCTAssertEqual(list.to_string(), "doop")
    }
}
