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
            teacherName = dictionary["teacherName"] as? String,
            valueAsString = dictionary["proposalURL"] as? String,
            valueAsURL = NSURL(string: valueAsString),
            proposalID = dictionary["id"]?.stringValue
            else { fatalError("Could not create proposal object from supplied dictionary") }
        
        htmlURL = valueAsURL
        fullName = name
        repositoryID = repoID
    }
    
}