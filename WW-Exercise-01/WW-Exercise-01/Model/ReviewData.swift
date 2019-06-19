//  ReviewData.swift
//{
//    "review_id":7134567,
//    "rating":"4.0",
//    "title":"",
//    "message":"Im Ganzen eine gute Veranstaltung. Lediglich die Dachbegehung, die ich von einer fr\u00fcheren F\u00fchrung kannte, habe ich vermi\u00dft.\nBefremdlich fand ich (nicht nur alleine) den Hinweis der F\u00fchrerin, da\u00df w\u00e4hrend der Berlin-Blockade die Bev\u00f6lkerung von Berlin (West) von der sowjetischen Besatzungsmacht mit Lebensmitteln versorgt worden und dies in der Landesbibliothek nachzulesen sei. Dies ist nun falsch, was mir nicht nur diverse Zeitzeugen best\u00e4tigten. Wahr ist, Berliner konnten im Ostsektor Lebensmittel auf Karte beziehen. Dies wurde aber lediglich im sehr geringen Umfang get\u00e4tigt. Auch war Berlin (West) nicht wegen der Schwerindustrie f\u00fcr die Westalliierten wichtig. Da kamen wir uns in die Zeit des kalten Krieges versetzt vor, wo Tatsachen aus ideologischer Sicht verkl\u00e4rt wurden und teilweise aus der historischen, eine politische F\u00fchrung wurde. Nur haben wir die Teilung vor Ort selbst erlebt und kannten auch die Vorgeschichte.\nSonst war es aber ok und sch\u00f6n, den alten Flair wiederzusehn.",
//    "author":"Frank \u2013 Germany",
//    "foreignLanguage":true,
//    "date":"June 17, 2019",
//    "date_unformatted":{
//
//    },
//    "languageCode":"de",
//    "traveler_type":"friends",
//    "reviewerName":"Frank",
//    "reviewerCountry":"Germany",
//    "reviewerProfilePhoto":null,
//    "isAnonymous":false,
//    "firstInitial":"F"
//}

import Foundation

///// Represent an API response

struct ReviewData : Codable {
    var reviewId : Int64?
    var rating : String?
    var title : String?
    
    var message : String?
    var author : String?
    var foreignLanguage : Bool?
    
    var date : String?
//    var date_unformatted : NSDictionary
    var languageCode : String?
    var travelerType : String?
    var reviewerName : String?
    var reviewerCountry : String?
    var reviewerProfilePhoto : String? // photo url ..
    var isAnonymous : Bool?
    var firstInitial : String?
    
    enum CodingKeys: String, CodingKey {
        case reviewId = "review_id"
        case rating
        case title
        case message
        
        case author
        case foreignLanguage
        
        case date
        //    var date_unformatted : NSDictionary
        case languageCode
        case travelerType = "traveler_type"
        case reviewerName
        case reviewerCountry
        case reviewerProfilePhoto
        case isAnonymous
        case firstInitial
        
    }
    
    init(_ dictionary: [String: Any]) {
        self.reviewId = dictionary["reviewId"] as? Int64 //?? ""
        self.rating = dictionary["rating"] as? String //?? ""
        self.title = dictionary["title"] as? String //?? ""
        
        self.message = dictionary["message"] as? String //?? ""
        self.author = dictionary["rating"] as? String //?? author
        self.foreignLanguage = dictionary["foreignLanguage"] as? Bool //?? ""
        
        self.date = dictionary["date"] as? String //?? ""
        self.languageCode = dictionary["languageCode"] as? String //?? ""
        self.travelerType = dictionary["travelerType"] as? String //?? ""
        
        self.reviewerName = dictionary["reviewerName"] as? String //?? ""
        self.reviewerCountry = dictionary["reviewerCountry"] as? String //?? ""
        self.reviewerProfilePhoto = dictionary["reviewerProfilePhoto"] as? String //?? ""
        
        self.isAnonymous = dictionary["isAnonymous"] as? Bool //?? ""
        self.firstInitial = dictionary["firstInitial"] as? String //?? ""
       
    }
}
