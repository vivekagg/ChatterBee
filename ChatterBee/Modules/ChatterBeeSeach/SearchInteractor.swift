//
//  SearchInteractor.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 14/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation

class searchInteractor{
    //Search Interactor is where all the use cases for the Search View Controller will go
    //EG. 1. Look Up Basically look up is the only use case i can think of right now for this view controller
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
