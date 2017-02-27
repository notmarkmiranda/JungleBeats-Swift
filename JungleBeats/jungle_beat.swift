//
//  jungle_beat.swift
//  JungleBeats
//
//  Created by Mark Miranda on 2/26/17.
//  Copyright © 2017 Mark Miranda. All rights reserved.
//

import Foundation

class JungleBeat {
    var list = LinkedList()
    
    func append(data: String) -> String {
        let splitWords = data.components(separatedBy: " ")
        for word in splitWords {
            _=list.append(data: word)
        }
        return data
    }
    
    func count() -> Int {
        return list.count()
    }
}
