//
//  PresenterSearch.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 11/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation

class PresenterSearch{
    var backend = DuckDuckGoSearch()
    func lookupStringOnDuckDuckGo(_ url:String?){
        guard let url_change = url else {return}
        backend.performSearch(for: url_change) { definition in
            guard let definition:Definition = definition else{
                return
            }
            print(definition)
        
            
        }
    }
}
