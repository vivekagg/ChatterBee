//
//  File.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 13/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation
import Alamofire

class DuckDuckGoSearch{
    func performSearch(for term:String, completion:@escaping (Definition?) -> Void){
        let parameters: Parameters = ["q": term, "format": "json", "pretty": 1,
                                      "no_html": 1, "skip_disambig": 1]
        Alamofire.request("https://api.duckduckgo.com", method: .get, parameters: parameters).responseData { response in
            if response.result.isFailure {
                completion(nil)
                return
            }
            guard let jsonData = response.result.value else {
                completion(nil)
                return
            }
            
            // 5
            let decoder = JSONDecoder()
            let definition = try? decoder.decode(Definition.self, from: jsonData)
            
            // 6
            if let definition = definition, definition.resultType == .article {
                completion(definition)
            } else {
                completion(nil)
            }
            }
            
        }
        }

