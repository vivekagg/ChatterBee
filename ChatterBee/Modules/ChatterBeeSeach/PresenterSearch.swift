//
//  PresenterSearch.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 11/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation

class PresenterSearch{
    var interactor = searchInteractor()
    var router = routerSearch()
    func askInteractorForJsonData(_ urlString:String?){
        var definition:Definition?
        definition = interactor.lookupStringOnDuckDuckGo(urlString)
        if definition != nil {
            print("description is \(definition!.description)")
            print("image url is \(definition!.imageURL as Any)")
            print("title is \(definition!.title)")
            print("result type is \(definition!.resultType)")
            
        }
    }
}
