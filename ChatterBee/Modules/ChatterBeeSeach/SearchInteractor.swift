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
    var definition_return:Definition?
    func lookupStringOnDuckDuckGo(_ url:String?) -> Definition? {
        guard let url2 = url else {return nil}
        backend.performSearch(for: url2, completion:  { definition in
                self.definition_return = definition
        })
        return definition_return
        }
}

