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
        interactor.lookupStringOnDuckDuckGo(urlString)
    }
}
