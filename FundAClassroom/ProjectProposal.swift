//
//  ProjectProposal.swift
//  FundAClassroom
//
//  Created by Flatiron School on 9/7/16.
//  Copyright © 2016 Shea Furey-King. All rights reserved.
//

import UIKit

class ProjectProposal {
    var teacherName: String
    var htmlURL: NSURL
    var proposalID: String
    
    init(dictionary: NSDictionary) {
        guard let
            name = dictionary["teacherName"] as? String,
            valueAsString = dictionary["proposalURL"] as? String,
            valueAsURL = NSURL(string: valueAsString),
            propoID = dictionary["id"]?.stringValue
            else { fatalError("Could not create repository object from supplied dictionary") }
        
        htmlURL = valueAsURL
        teacherName = name
        proposalID = propoID
    }
    
}