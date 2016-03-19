//
//  DataService.swift
//  electri-social
//
//  Created by Jim Witterschein on 3/9/16.
//  Copyright © 2016 State Exam Pass. All rights reserved.
//

import Foundation
import Firebase

let _URL_BASE = "https://electri-social.firebaseio.com"

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = Firebase(url: "\(_URL_BASE)")
    private var _REF_POSTS = Firebase(url: "\(_URL_BASE)/posts")
    private var _REF_USERS = Firebase(url: "\(_URL_BASE)/users")
    
    var REF_BASE: Firebase {
        return _REF_BASE
    }
    
    var REF_POSTS: Firebase {
        return _REF_POSTS
    }
    
    var REF_USERS: Firebase {
        return _REF_USERS
    }
    
    func createFirebaseUser(uid: String, user: Dictionary<String, String>) {
        REF_USERS.childByAppendingPath(uid).setValue(user)
    }
    
}