//
//  DonorsChooseAPIClient.swift
//  FundAClassroom
//
//  Created by Flatiron School on 9/7/16.
//  Copyright © 2016 Shea Furey-King. All rights reserved.
//

import UIKit

class GithubAPIClient {
    
    class func getRepositoriesWithCompletion(completion: (NSArray) -> ()) {
        let urlString = "https://api.donorschoose.org/common/json_feed.html?keywords=”11238”&APIKey=DONORSCHOOSE"
        let url = NSURL(string: urlString)
        let session = NSURLSession.sharedSession()
        
        guard let unwrappedURL = url else { fatalError("Invalid URL") }
        
        let task = session.dataTaskWithURL(unwrappedURL) { (data, response, error) in
            guard let data = data else { fatalError("Unable to get data \(error?.localizedDescription)") }
            
            if let responseArray = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSArray {
                if let responseArray = responseArray {
                    completion(responseArray)
                }
            }
        }
        task.resume()
}
}