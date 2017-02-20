//
//  linked_list.swift
//  JungleBeats
//
//  Created by Mark Miranda on 2/19/17.
//  Copyright © 2017 Mark Miranda. All rights reserved.
//

import Foundation
class LinkedList {
    var head: Node?
    
    func append(data: String) -> String {
        let newNode = Node(data: data)
        if head == nil {
            head = newNode
        }
        return data
    }
    
    func count() -> Int {
        var count = 0
        if var current = head {
            count = 1
            while current.next_node != nil {
                current = current.next_node!
                count += 1
            }
        }
        return count
    }
    
    func to_string() -> String{
        var listString = ""
        if var current = head {
            listString += "\(current.data) "
            while current.next_node != nil {
                listString += current.data + " "
                current = current.next_node!
            }
        }
        
        return listString.trimmingCharacters(in: .whitespaces)
    }
}
