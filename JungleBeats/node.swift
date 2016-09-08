//
//  node.swift
//  JungleBeats
//
//  Created by Mark Miranda on 9/7/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import Foundation
class Node {
    var data: String
    var next_node: Node?
    
    init(data: String, next_node: Node?){
        self.data = data
        self.next_node = next_node
    }
}