//
//  PresenterSearch.swift
//  ChatterBee
//
//  Created by Vivek Aggarwal on 11/10/18.
//  Copyright © 2018 vivek. All rights reserved.
//

import Foundation
import UIKit
//Presenter does the job of making the data from the interactor presentable to the view,,in this case converting the definition into different types of cells that populate the table.
class PresenterSearch{
    var interactor = searchInteractor()
    var router = routerSearch()
    func loadDefinition(_ urlString:String?) {
        interactor.lookupStringOnDuckDuckGo(urlString)
        /*if definition != nil {
            print("description is \(definition!.description)")
            print("image url is \(definition!.imageURL as Any)")
            print("title is \(definition!.title)")
         print("result type is \(definition!.resultType)")}*/
        }
    
    
    func presentableReturnCellTypeWithData() -> UITableViewCell {
        if self.interactor.definition != nil{
            let cell = UITableViewCell()
            return cell
        }
        else
        {
            let cell2 = UITableViewCell()
            return cell2
        }
    }
    }

