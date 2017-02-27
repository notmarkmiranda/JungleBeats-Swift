//
//  jungle_beat_test.swift
//  JungleBeats
//
//  Created by Mark Miranda on 2/26/17.
//  Copyright © 2017 Mark Miranda. All rights reserved.
//

import XCTest
@testable import JungleBeats

class JungleBeatTest: XCTestCase {
    
    func test_jb_has_an_empty_list_by_default() {
        let jb = JungleBeat()
        XCTAssertNotNil(jb.list)
    }
    
    func test_jb_list_head_is_nil_by_default() {
        let jb = JungleBeat()
        XCTAssertNil(jb.list.head)
    }
    
    func test_jb_list_can_append_single_word() {
        let jb = JungleBeat()
        XCTAssertEqual(jb.append(data: "first"), "first")
    }
    
    func test_jb_can_append_multiple_words() {
        let jb = JungleBeat()
        XCTAssertEqual(jb.append(data: "first second third"), "first second third")
        XCTAssertEqual(jb.list.head!.data, "first")
        XCTAssertEqual(jb.list.head!.next_node!.data, "second")
        XCTAssertEqual(jb.append(data: "fourth fifth sixth"), "fourth fifth sixth")
        XCTAssertEqual(jb.count(), 6)
    }
}
