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
    
    
    func presentableReturnCellTypeWithData(cell:UITableViewCell) -> UITableViewCell {
        if (self.interactor.definition != nil){
            if self.interactor.definition?.imageURL != nil
            {
                cell.imageView?.imageFromUrl(urlString: "https://robohash.org/123.png")
                return cell
            }
        }
            return cell

    }
    
    }

class imageTableCellView : UITableViewCell{
    
    @IBOutlet weak var ug: UIImageView!
    
}
extension UIImageView {
    public func imageFromUrl(urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {
                (response: URLResponse?, data: Data?, error: Error?) -> Void in
                if let imageData = data as Data? {
                    self.image = UIImage(data: imageData)
                }
            }
        }
    }
}
