//
//  TourService.swift
//  WW-Exercise-01
//
//  Created by Rakesh Kumar on 2019-06-12.
//
import Foundation

final class TourService {
    // https://www.getyourguide.com/berlin-l17/tempelhof-2-hour-airport-history-tour-berlin-airlift-more-t23776/reviews.json
  private let baseUrl = URL(string: "https://www.getyourguide.com/")

  private let networking: Networking

  init(networking: Networking) {
    self.networking = networking
  }

    /// Fetch reviews from GYG service ..
    /// - Parameter completion: Called when operation finishes..
    func fetchGYGReviews(completion: @escaping (ReviewBase) -> Void) {
        let params  = ["count":"15", "page":"0", "rating":"0", "sortBy":"date_of_review", "direction":"DESC"]
        
        let resource = Resource(url: baseUrl ?? nil!, path: "berlin-l17/tempelhof-2-hour-airport-history-tour-berlin-airlift-more-t23776/reviews.json", httpMethod: "GET" ,parameters: params)
        
        _ = networking.fetch(resource: resource, completion: { data in
            DispatchQueue.main.async {
                do {
      
                    //here dataResponse received from a network request
                    let decoder = JSONDecoder()
                    let model = try decoder.decode(ReviewBase.self, from:
                        data ?? nil!) //Decode JSON Response Data
                    
                    print(model)
                   
                    completion(model)
                    
                } catch let parsingError {
                    print("Error", parsingError)
                }

            }
        })
    }
}
