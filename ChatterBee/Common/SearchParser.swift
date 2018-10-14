//
//  SearchParser.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 13/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation
struct Definition : Codable{
    let title : String
    let description:String
    let resultType:ResultType
    let imageURL: URL?
    
    enum CodingKeys: String , CodingKey{
        case title = "Heading"
        case description = "AbstractText"
        case resultType = "Type"
        case imageURL = "Image"
    }
}

enum ResultType:String,Codable{
    case article = "A"
    case disambiguation = "D"
    case category = "C"
    case name = "N"
    case exclusive = "E"
}

extension Definition{
    init (from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let title = try container.decode(String.self, forKey: .title)
        let description = try container.decode(String.self, forKey: .description)
        let resultType = try container.decode(ResultType.self, forKey: .resultType)
        let imageURL = try container.decode(URL?.self, forKey: .imageURL)
        
        self.init(title: title,description:description,resultType:resultType,imageURL:imageURL)
    }
}
