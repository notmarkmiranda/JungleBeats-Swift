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
        _=list.append(data: "doop")
        XCTAssertEqual(list.count(), 1)
    }
    
    func test_list_can_to_string() {
        let list = LinkedList()
        _=list.append(data: "doop")
        XCTAssertEqual(list.toString(), "doop")
    }
    
    func test_list_can_append_twice() {
        let list = LinkedList()
        _=list.append(data: "doop")
        XCTAssertNotNil(list.head)
        XCTAssertNil(list.head?.next_node)
        
        XCTAssertEqual(list.append(data: "deep"), "deep")
        XCTAssertNotNil(list.head?.next_node)
    }
    
    func test_list_can_count_two_nodes() {
        let list = LinkedList()
        _=list.append(data: "doop")
        _=list.append(data: "deep")
        XCTAssertEqual(list.count(), 2)
    }
    
    func test_list_can_to_string_two_nodes() {
        let list = LinkedList()
        _=list.append(data: "doop")
        _=list.append(data: "deep")
        XCTAssertEqual(list.toString(), "doop deep")
    }
    
    func test_list_can_prepend() {
        let list = LinkedList()
        _=list.append(data: "doop")
        XCTAssertEqual(list.toString(), "doop")
        
        _=list.append(data: "suu")
        XCTAssertEqual(list.toString(), "doop suu")
        
        XCTAssertEqual(list.prepend(data: "dop"), "dop")
        XCTAssertEqual(list.toString(), "dop doop suu")
        XCTAssertEqual(list.count(), 3)
    }
    
    func test_list_can_insert() {
        let list = LinkedList()
        _=list.append(data: "third")
        _=list.append(data: "fourth")
        _=list.prepend(data: "first")
        XCTAssertEqual(list.insert(position: 1, data: "second"), "second")
        XCTAssertEqual(list.toString(), "first second third fourth")
    }
    
    func test_list_can_find() {
        let list = LinkedList()
        _=list.append(data: "first")
        _=list.append(data: "second")
        _=list.append(data: "third")
        _=list.append(data: "fourth")
        _=list.append(data: "fifth")
        
        XCTAssertEqual(list.toString(), "first second third fourth fifth")
        XCTAssertEqual(list.find(position: 2, words: 1), "third")
    }
    
    func test_list_can_find_multiple_words() {
        let list = LinkedList()
        _=list.append(data: "first")
        _=list.append(data: "second")
        _=list.append(data: "third")
        _=list.append(data: "fourth")
        _=list.append(data: "fifth")
        XCTAssertEqual(list.find(position: 1, words: 3), "second third fourth")
    }
    
    func test_list_can_check_for_includes_true() {
        let list = LinkedList()
        _=list.append(data: "first")
        _=list.append(data: "second")
        _=list.append(data: "third")
        _=list.append(data: "fourth")
        _=list.append(data: "fifth")
        XCTAssert(list.includes(data: "first"))
        XCTAssert(list.includes(data: "fourth"))
    }
    
    func test_list_includes_can_return_false() {
        let list = LinkedList()
        _=list.append(data: "first")
        XCTAssertFalse(list.includes(data: "second"))
    }
    
    func test_list_can_pop() {
        let list = LinkedList()
        _=list.append(data: "first")
        _=list.append(data: "second")
        _=list.append(data: "third")
        _=list.append(data: "fourth")
        XCTAssertEqual(list.pop(), "fourth")
        XCTAssertEqual(list.pop(), "third")
        XCTAssertEqual(list.count(), 2)
    }
}
