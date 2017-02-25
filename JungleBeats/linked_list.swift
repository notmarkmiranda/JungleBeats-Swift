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
        } else {
            let current = findEndNode()
            current.next_node = newNode
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
    
    func find(position: Int, words: Int) -> String {
        var listString = ""
        var current = goToNodePosition(position: position + 1)
        for _ in 1...words {
            listString += "\(current.data) "
            current = current.next_node!
        }
        return listString.trimmingCharacters(in: .whitespaces)
    }
    
    func includes(data: String, current_node: Node? = nil) -> Bool {
        let current = current_node ?? head!
        if current.data == data {
            return true
        } else if current.next_node != nil {
            return includes(data: data, current_node: current.next_node)
        }
        return false
    }
    
    func insert(position: Int, data: String) -> String {
        let newNode = Node(data: data)
        let current = goToNodePosition(position: position)
        let temp = current.next_node
        current.next_node = newNode
        newNode.next_node = temp
        return data
    }
    
    func pop() -> String {
        let secondLast = secondToLast()
        let nodeString = secondLast.next_node!.data
        secondLast.next_node = nil
        return nodeString
    }
    
    func prepend(data: String) -> String {
        let newNode = Node(data: data)
        if head != nil {
            newNode.next_node = head!
            
        }
        head = newNode
        return data
    }
    
    func toString() -> String{
        var listString = ""
        if var current = head {
            listString += "\(current.data) "
            while current.next_node != nil {
                current = current.next_node!
                listString += current.data + " "
            }
        }
        return listString.trimmingCharacters(in: .whitespaces)
    }
    
    private func findEndNode() -> Node {
        var current = head!
        while current.next_node != nil {
            current = current.next_node!
        }
        return current
    }
    
    private func goToNodePosition(position: Int) -> Node {
        var current = head!
        var i = 1
        while i < position {
            current = current.next_node!
            i += 1
        }
        return current
    }
    
    private func secondToLast(node : Node? = nil) -> Node {
        var current = head!
        while current.next_node?.next_node != nil {
            current = current.next_node!
        }
        return current
    }
 

}
