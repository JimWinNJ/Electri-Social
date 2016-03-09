//
//  DataService.swift
//  electri-social
//
//  Created by Jim Witterschein on 3/9/16.
//  Copyright © 2016 State Exam Pass. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "https://electri-social.firebaseio.com")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
    
}