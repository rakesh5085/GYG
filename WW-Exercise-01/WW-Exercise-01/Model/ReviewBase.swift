//
//  ReviewBase.swift
//
//  Created by Rakesh Kumar on 2018-07-12.
//

//
//{
//    "status":true,
//    "total_reviews_comments":765,
//    "data":[  ] // array of reviews
//}

import Foundation

struct ReviewBase : Codable {
    var status : Bool?
    var totalReviewsComments : Int64?
    var data : [ReviewData]?
    
    enum CodingKeys: String, CodingKey {
        
        case status
        case totalReviewsComments = "total_reviews_comments"
        case data

    }
    
    init(_ dictionary: [String: Any]) {
        self.status = dictionary["status"] as? Bool //?? ""
        self.totalReviewsComments = dictionary["total_reviews_comments"] as? Int64 //?? ""
        self.data = dictionary["data"] as? [ReviewData] //?? ""
  
    }
}
